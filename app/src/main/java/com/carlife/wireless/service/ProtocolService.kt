package com.carlife.wireless.service

import android.app.Service
import android.content.Intent
import android.os.Binder
import android.os.IBinder
import com.carlife.wireless.util.LogUtils
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.ConcurrentLinkedQueue
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong

/**
 * 协议服务 — 协议统计、握手追踪、健康监控
 *
 * 职责：
 * 1. 统计各通道消息收发计数（CMD/VIDEO/MEDIA/TTS/VR/CTRL）
 * 2. 追踪 CarLife 握手流程（阶段、耗时、成功/失败）
 * 3. 记录协议事件时间线（最近 N 条）
 * 4. 提供诊断数据供 NetworkDiagActivity 和 ErrorTracker 使用
 *
 * 使用方式：
 * - ConnectionService 在启动时 bind ProtocolService
 * - MdRole/HuRole 通过 ProtocolService.reportXxx() 上报事件
 * - UI 通过 ProtocolService.getStats() 查询统计数据
 */
class ProtocolService : Service() {

    companion object {
        private const val TAG = "ProtocolService"
        private const val MAX_TIMELINE_EVENTS = 200

        /** 单例引用（供 MdRole/HuRole 静态访问） */
        @Volatile
        private var instance: ProtocolService? = null

        @JvmStatic
        fun getInstance(): ProtocolService? = instance
    }

    // ==================== 通道消息统计 ====================

    /** 通道类型枚举 */
    enum class Channel(val label: String) {
        CMD("命令通道"),
        VIDEO("视频通道"),
        MEDIA("媒体通道"),
        TTS("语音播报"),
        VR("语音识别"),
        CTRL("触控通道")
    }

    /** 单通道统计 */
    data class ChannelStats(
        val sent: Int = 0,
        val received: Int = 0,
        val errors: Int = 0,
        val lastActivityMs: Long = 0L
    ) {
        fun lastActivityFormatted(): String {
            if (lastActivityMs == 0L) return "无"
            val ago = System.currentTimeMillis() - lastActivityMs
            return when {
                ago < 1000 -> "刚刚"
                ago < 60_000 -> "${ago / 1000}秒前"
                ago < 3600_000 -> "${ago / 60_000}分钟前"
                else -> SimpleDateFormat("HH:mm:ss", Locale.US).format(Date(lastActivityMs))
            }
        }
    }

    private val sentCounts = ConcurrentHashMap<Channel, AtomicInteger>()
    private val recvCounts = ConcurrentHashMap<Channel, AtomicInteger>()
    private val errorCounts = ConcurrentHashMap<Channel, AtomicInteger>()
    private val lastActivityMs = ConcurrentHashMap<Channel, AtomicLong>()

    // ==================== 握手追踪 ====================

    /** 握手阶段 */
    enum class HandshakePhase(val label: String) {
        IDLE("未开始"),
        VERSION_NEGOTIATION("版本协商"),
        DEVICE_INFO("设备信息交换"),
        AUTHENTICATION("认证"),
        AUTH_RESULT("认证结果"),
        FEATURE_CONFIG("特性协商"),
        VIDEO_ENCODER_INIT("编码器初始化"),
        VIDEO_START("视频启动"),
        COMPLETED("握手完成"),
        FAILED("握手失败")
    }

    /** 握手事件 */
    data class HandshakeEvent(
        val timestamp: Long = System.currentTimeMillis(),
        val phase: HandshakePhase,
        val direction: String,   // "→" 发送, "←" 接收
        val messageType: Int,
        val success: Boolean = true,
        val detail: String = ""
    ) {
        fun format(): String {
            val time = SimpleDateFormat("HH:mm:ss.SSS", Locale.US).format(Date(timestamp))
            val status = if (success) "✓" else "✗"
            return "[$time] $status $direction ${phase.label}${if (detail.isNotEmpty()) ": $detail" else ""}"
        }
    }

    private val handshakeTimeline = ConcurrentLinkedQueue<HandshakeEvent>()
    private var handshakeStartTime = AtomicLong(0L)
    private var handshakeEndTime = AtomicLong(0L)
    private val currentPhase = AtomicReference(HandshakePhase.IDLE)
    private val handshakeSuccessCount = AtomicInteger(0)
    private val handshakeFailCount = AtomicInteger(0)
    private val lastHandshakeDurationMs = AtomicLong(0L)

    // ==================== 协议事件时间线 ====================

    /** 协议事件类型 */
    enum class EventType(val label: String) {
        MSG_SENT("发送"),
        MSG_RECEIVED("接收"),
        HANDSHAKE("握手"),
        CONNECTION("连接"),
        ERROR("错误"),
        HEARTBEAT("心跳")
    }

    /** 协议事件记录 */
    data class ProtocolEvent(
        val timestamp: Long = System.currentTimeMillis(),
        val type: EventType,
        val channel: Channel?,
        val message: String,
        val detail: String = ""
    ) {
        fun format(): String {
            val time = SimpleDateFormat("HH:mm:ss.SSS", Locale.US).format(Date(timestamp))
            val ch = channel?.let { "[${it.label}]" } ?: ""
            return "[$time] [${type.label}]$ch $message${if (detail.isNotEmpty()) " - $detail" else ""}"
        }
    }

    private val eventTimeline = ConcurrentLinkedQueue<ProtocolEvent>()
    private val totalEvents = AtomicInteger(0)

    // ==================== 心跳统计 ====================

    private val heartbeatSent = AtomicInteger(0)
    private val heartbeatReceived = AtomicInteger(0)
    private val heartbeatTimeouts = AtomicInteger(0)
    private val lastHeartbeatLatencyMs = AtomicLong(0L)
    private val avgHeartbeatLatencyMs = AtomicLong(0L)
    private val heartbeatLatencySum = AtomicLong(0L)

    // ==================== Binder ====================

    private val binder = ProtocolBinder()

    inner class ProtocolBinder : Binder() {
        fun getService(): ProtocolService = this@ProtocolService
    }

    // ==================== 生命周期 ====================

    override fun onCreate() {
        super.onCreate()
        instance = this
        initCounters()
        LogUtils.i(TAG, "ProtocolService created")
    }

    override fun onBind(intent: Intent?): IBinder = binder

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        LogUtils.i(TAG, "ProtocolService started")
        return START_STICKY
    }

    override fun onDestroy() {
        super.onDestroy()
        instance = null
        LogUtils.i(TAG, "ProtocolService destroyed")
    }

    private fun initCounters() {
        Channel.entries.forEach { ch ->
            sentCounts[ch] = AtomicInteger(0)
            recvCounts[ch] = AtomicInteger(0)
            errorCounts[ch] = AtomicInteger(0)
            lastActivityMs[ch] = AtomicLong(0L)
        }
    }

    // ==================== 消息统计上报 ====================

    /**
     * 上报消息发送
     * @param channel 通道类型
     * @param messageType CarLife 消息 ID
     * @param size 消息大小（字节）
     */
    fun reportMessageSent(channel: Channel, messageType: Int, size: Int = 0) {
        sentCounts[channel]?.incrementAndGet()
        lastActivityMs[channel]?.set(System.currentTimeMillis())
        addEvent(ProtocolEvent(
            type = EventType.MSG_SENT,
            channel = channel,
            message = "0x${Integer.toHexString(messageType)}",
            detail = if (size > 0) "${size}B" else ""
        ))
    }

    /**
     * 上报消息接收
     */
    fun reportMessageReceived(channel: Channel, messageType: Int, size: Int = 0) {
        recvCounts[channel]?.incrementAndGet()
        lastActivityMs[channel]?.set(System.currentTimeMillis())
        addEvent(ProtocolEvent(
            type = EventType.MSG_RECEIVED,
            channel = channel,
            message = "0x${Integer.toHexString(messageType)}",
            detail = if (size > 0) "${size}B" else ""
        ))
    }

    /**
     * 上报通道错误
     */
    fun reportChannelError(channel: Channel, error: String) {
        errorCounts[channel]?.incrementAndGet()
        addEvent(ProtocolEvent(
            type = EventType.ERROR,
            channel = channel,
            message = error
        ))
    }

    // ==================== 握手追踪 ====================

    /**
     * 开始握手追踪
     */
    fun startHandshake() {
        handshakeStartTime.set(System.currentTimeMillis())
        handshakeEndTime.set(0L)
        currentPhase.set(HandshakePhase.VERSION_NEGOTIATION)
        handshakeTimeline.clear()
        addHandshakeEvent(HandshakeEvent(
            phase = HandshakePhase.VERSION_NEGOTIATION,
            direction = "→",
            messageType = 0x00018001,
            detail = "开始 CarLife 握手"
        ))
        addEvent(ProtocolEvent(
            type = EventType.HANDSHAKE,
            message = "握手开始"
        ))
    }

    /**
     * 上报握手阶段进展
     */
    fun reportHandshakePhase(
        phase: HandshakePhase,
        direction: String,
        messageType: Int,
        success: Boolean = true,
        detail: String = ""
    ) {
        currentPhase.set(phase)
        addHandshakeEvent(HandshakeEvent(
            phase = phase,
            direction = direction,
            messageType = messageType,
            success = success,
            detail = detail
        ))
    }

    /**
     * 握手完成
     */
    fun completeHandshake(success: Boolean, detail: String = "") {
        val endTime = System.currentTimeMillis()
        handshakeEndTime.set(endTime)
        val duration = if (handshakeStartTime.get() > 0) endTime - handshakeStartTime.get() else 0L
        lastHandshakeDurationMs.set(duration)

        if (success) {
            currentPhase.set(HandshakePhase.COMPLETED)
            handshakeSuccessCount.incrementAndGet()
        } else {
            currentPhase.set(HandshakePhase.FAILED)
            handshakeFailCount.incrementAndGet()
        }

        addHandshakeEvent(HandshakeEvent(
            phase = if (success) HandshakePhase.COMPLETED else HandshakePhase.FAILED,
            direction = "",
            messageType = 0,
            success = success,
            detail = if (success) "握手完成 (${duration}ms)" else "握手失败: $detail"
        ))
        addEvent(ProtocolEvent(
            type = EventType.HANDSHAKE,
            message = if (success) "握手成功" else "握手失败",
            detail = "${duration}ms${if (detail.isNotEmpty()) " - $detail" else ""}"
        ))

        LogUtils.i(TAG, "Handshake ${if (success) "completed" else "failed"} in ${duration}ms")
    }

    // ==================== 心跳统计 ====================

    fun reportHeartbeatSent() {
        heartbeatSent.incrementAndGet()
    }

    fun reportHeartbeatReceived(latencyMs: Long) {
        heartbeatReceived.incrementAndGet()
        lastHeartbeatLatencyMs.set(latencyMs)
        heartbeatLatencySum.addAndGet(latencyMs)
        val count = heartbeatReceived.get()
        if (count > 0) {
            avgHeartbeatLatencyMs.set(heartbeatLatencySum.get() / count)
        }
    }

    fun reportHeartbeatTimeout() {
        heartbeatTimeouts.incrementAndGet()
    }

    // ==================== 连接事件 ====================

    fun reportConnectionEvent(channel: Channel, connected: Boolean, detail: String = "") {
        addEvent(ProtocolEvent(
            type = EventType.CONNECTION,
            channel = channel,
            message = if (connected) "通道已连接" else "通道已断开",
            detail = detail
        ))
    }

    // ==================== 查询接口 ====================

    /** 获取单通道统计 */
    fun getChannelStats(channel: Channel): ChannelStats {
        return ChannelStats(
            sent = sentCounts[channel]?.get() ?: 0,
            received = recvCounts[channel]?.get() ?: 0,
            errors = errorCounts[channel]?.get() ?: 0,
            lastActivityMs = lastActivityMs[channel]?.get() ?: 0L
        )
    }

    /** 获取所有通道统计 */
    fun getAllChannelStats(): Map<Channel, ChannelStats> {
        return Channel.entries.associateWith { getChannelStats(it) }
    }

    /** 获取当前握手阶段 */
    fun getCurrentHandshakePhase(): HandshakePhase = currentPhase.get()

    /** 获取握手时间线 */
    fun getHandshakeTimeline(limit: Int = 50): List<HandshakeEvent> {
        return handshakeTimeline.toList().takeLast(limit)
    }

    /** 获取最近握手耗时 */
    fun getLastHandshakeDurationMs(): Long = lastHandshakeDurationMs.get()

    /** 获取握手成功/失败次数 */
    fun getHandshakeStats(): Pair<Int, Int> = Pair(handshakeSuccessCount.get(), handshakeFailCount.get())

    /** 获取协议事件时间线 */
    fun getEventTimeline(limit: Int = 50): List<ProtocolEvent> {
        return eventTimeline.toList().takeLast(limit)
    }

    /** 获取总消息统计 */
    fun getTotalMessageCount(): Pair<Int, Int> {
        val totalSent = sentCounts.values.sumOf { it.get() }
        val totalRecv = recvCounts.values.sumOf { it.get() }
        return Pair(totalSent, totalRecv)
    }

    /** 获取总错误数 */
    fun getTotalErrors(): Int = errorCounts.values.sumOf { it.get() }

    /** 获取心跳统计 */
    fun getHeartbeatStats(): HeartbeatStats {
        return HeartbeatStats(
            sent = heartbeatSent.get(),
            received = heartbeatReceived.get(),
            timeouts = heartbeatTimeouts.get(),
            lastLatencyMs = lastHeartbeatLatencyMs.get(),
            avgLatencyMs = avgHeartbeatLatencyMs.get()
        )
    }

    data class HeartbeatStats(
        val sent: Int = 0,
        val received: Int = 0,
        val timeouts: Int = 0,
        val lastLatencyMs: Long = 0L,
        val avgLatencyMs: Long = 0L
    )

    /**
     * 生成诊断报告文本
     */
    fun generateReport(): String {
        val sb = StringBuilder()
        val time = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(Date())

        sb.appendLine("╔══════════════════════════════════════════╗")
        sb.appendLine("║       CarLife 协议诊断报告              ║")
        sb.appendLine("╚══════════════════════════════════════════╝")
        sb.appendLine("生成时间: $time")
        sb.appendLine()

        // 通道统计
        sb.appendLine("═══ 通道消息统计 ═══")
        val (totalSent, totalRecv) = getTotalMessageCount()
        sb.appendLine("总发送: $totalSent, 总接收: $totalRecv, 总错误: ${getTotalErrors()}")
        Channel.entries.forEach { ch ->
            val stats = getChannelStats(ch)
            if (stats.sent > 0 || stats.received > 0 || stats.errors > 0) {
                sb.appendLine("  ${ch.label}: 发送=${stats.sent}, 接收=${stats.received}, 错误=${stats.errors}, 最后活动=${stats.lastActivityFormatted()}")
            }
        }
        sb.appendLine()

        // 握手统计
        sb.appendLine("═══ 握手统计 ═══")
        val (success, fails) = getHandshakeStats()
        sb.appendLine("成功: $success 次, 失败: $fails 次")
        sb.appendLine("当前阶段: ${getCurrentHandshakePhase().label}")
        if (lastHandshakeDurationMs.get() > 0) {
            sb.appendLine("最近握手耗时: ${lastHandshakeDurationMs.get()}ms")
        }
        sb.appendLine()

        // 握手时间线
        val timeline = getHandshakeTimeline(20)
        if (timeline.isNotEmpty()) {
            sb.appendLine("═══ 握手时间线 (最近 20 条) ═══")
            timeline.forEach { sb.appendLine("  ${it.format()}") }
            sb.appendLine()
        }

        // 心跳统计
        sb.appendLine("═══ 心跳统计 ═══")
        val hb = getHeartbeatStats()
        sb.appendLine("发送: ${hb.sent}, 接收: ${hb.received}, 超时: ${hb.timeouts}")
        if (hb.lastLatencyMs > 0) {
            sb.appendLine("最近延迟: ${hb.lastLatencyMs}ms, 平均延迟: ${hb.avgLatencyMs}ms")
        }
        sb.appendLine()

        // 最近事件
        val events = getEventTimeline(20)
        if (events.isNotEmpty()) {
            sb.appendLine("═══ 最近事件 (最近 20 条) ═══")
            events.forEach { sb.appendLine("  ${it.format()}") }
        }

        return sb.toString()
    }

    /**
     * 重置所有统计
     */
    fun resetStats() {
        Channel.entries.forEach { ch ->
            sentCounts[ch]?.set(0)
            recvCounts[ch]?.set(0)
            errorCounts[ch]?.set(0)
            lastActivityMs[ch]?.set(0L)
        }
        handshakeTimeline.clear()
        eventTimeline.clear()
        handshakeStartTime.set(0L)
        handshakeEndTime.set(0L)
        currentPhase.set(HandshakePhase.IDLE)
        handshakeSuccessCount.set(0)
        handshakeFailCount.set(0)
        lastHandshakeDurationMs.set(0L)
        heartbeatSent.set(0)
        heartbeatReceived.set(0)
        heartbeatTimeouts.set(0)
        lastHeartbeatLatencyMs.set(0L)
        avgHeartbeatLatencyMs.set(0L)
        heartbeatLatencySum.set(0L)
        totalEvents.set(0)
        LogUtils.i(TAG, "All stats reset")
    }

    // ==================== 内部方法 ====================

    private fun addHandshakeEvent(event: HandshakeEvent) {
        handshakeTimeline.add(event)
        while (handshakeTimeline.size > MAX_TIMELINE_EVENTS) {
            handshakeTimeline.poll()
        }
    }

    private fun addEvent(event: ProtocolEvent) {
        eventTimeline.add(event)
        totalEvents.incrementAndGet()
        while (eventTimeline.size > MAX_TIMELINE_EVENTS) {
            eventTimeline.poll()
        }
    }
}
