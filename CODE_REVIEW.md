# CarLifeWirelessBox Kotlin 源码审查报告

**审查日期**: 2026-05-12
**审查范围**: 12 个核心 Kotlin 源文件

---

## 统计汇总

| 严重程度 | 数量 |
|---------|------|
| Critical | 5 |
| High | 9 |
| Medium | 11 |
| Low | 7 |
| **总计** | **32** |

---

## Critical

### 1. MdRole.kt:222 — 编译错误：缺少 import
- **问题**: `handleHuAuthenRequest()` 引用了 `CarlifeAuthenRequestProto.CarlifeAuthenRequest`，但 import 列表中缺失。
- **修复**: 添加 `import com.carlife.wireless.proto.CarlifeAuthenRequestProto`

### 2. VideoService/AudioService — MediaProjection 生命周期管理错误
- **文件**: VideoService.kt:122, AudioService.kt:133
- **问题**: `stopVideo()` 和 `stopAudio()` 中调用 `mediaProjection?.stop()`。MediaProjection 由外部创建传入，任一服务 stop 会终止共享实例，导致另一个服务崩溃。
- **修复**: 删除 `mediaProjection?.stop()`，只置 null。

### 3. Channel.kt — `state` 字段无线程安全保证
- **问题**: `state` 是普通 `var`，多线程环境下不保证可见性，可能导致向已断开 socket 写入。
- **修复**: 标记为 `@Volatile`。

### 4. Channel.kt — readCarLifeMsg/readCarLifeMediaMsg 无线程同步
- **问题**: 这两个方法读取 inputStream 但无 `@Synchronized`，与 `read()` 的同步策略不一致，可能导致并发读取数据交错。
- **修复**: 添加 `@Synchronized`。

### 5. AudioService.kt — 采样率不匹配导致音频失真
- **问题**: AudioRecord 使用 48000Hz，AAC 编码器硬编码 44100Hz，无重采样，导致音频变速变调。
- **修复**: 统一采样率（AudioRecord 用 44100 或 AAC 用 48000）。

---

## High

### 6. MdRole.kt:146-148 — ALL_CONNECTED 状态转换竞态
- **问题**: 两个线程可能同时看到 count == 6，重复触发状态转换。
- **修复**: 使用 `state.compareAndSet()` 保证只触发一次。

### 7. MdRole.kt — ExecutorService 从未关闭
- **问题**: `executor` 在 `stop()` 中未 `shutdown()`，线程池泄漏。
- **修复**: 在 `stop()` 中添加 `executor.shutdown()`。

### 8. TcpClient.kt:263-271 — disconnect 与 sendDataRaw 竞态
- **问题**: 流关闭不在 `synchronized(this)` 中，与写入并发可能导致写入已关闭流。
- **修复**: 将流关闭放入 `synchronized(this)` 块。

### 9. MdRole.kt:115-120 — cmdReadThread 不 join
- **问题**: `interrupt()` 不能中断阻塞在 InputStream.read() 的线程，导致线程泄漏。
- **修复**: 关闭 socket 中断阻塞，然后 `join(2000)`。

### 10. MdRole.kt:118-119 — mediaReadThreads 也不 join
- **问题**: 同上，线程可能泄漏。
- **修复**: 先关闭 socket，再 join 每个线程。

### 11. HuRole.kt — 通道字段无线程安全保护
- **问题**: cmdChannel 等 6 个字段是普通 var，connect/disconnect 在不同线程。
- **修复**: 标记为 `@Volatile`。

### 12. ConnectionService.kt — previewFrameCounter 非线程安全
- **问题**: 普通 Long 在 Binder 线程自增，主线程读取。
- **修复**: 使用 `AtomicLong`。

### 13. TcpServer.kt — stop/start 竞态
- **问题**: start 刚设 isRunning=true 但 serverSocket 未赋值时，stop 会跳过清理。
- **修复**: 使用锁或状态机保证序列化。

### 14. ConnectionService.kt — reconnect 回调引用已销毁 Service
- **问题**: Handler post 的 delayed Runnable 持有 Service 引用，Service 销毁后可能内存泄漏。
- **修复**: onDestroy 中确保 cancelHuReconnect()（已有），确认执行顺序。

---

## Medium

### 15. MdRole.kt:99 — stateListener 非线程安全
- **修复**: 使用 `@Volatile`。

### 16. Channel.kt — sendCarLifeMsg 与 writeFrame 同步策略不一致
- **说明**: 两者实际都用 `synchronized(this)`，互斥。但 state 检查在锁外。

### 17. ConnectionService.kt:88 — instance 单例不安全
- **修复**: 使用 WeakReference 或 bound service。

### 18. Channel.kt:297 — TcpServerChannel.connect() 忽略 autoRead
- **问题**: 无条件调用 startReadLoop()，与 autoRead=false 的 CMD 通道冲突。
- **修复**: `if (autoRead) startReadLoop()`

### 19. HuRole.kt:155 — connect() 未清理旧 Channel
- **修复**: 创建新 Channel 前先 disconnect 旧的。

### 20. TcpServer.kt — stop() 中 clients 迭代安全性
- **说明**: ConcurrentHashMap 弱一致性迭代，不会异常但可能漏掉刚添加的 client。

### 21. MdRole.kt:149 — handleClientDisconnected 状态回退逻辑
- **问题**: 断开一个通道后丢失握手状态信息。

### 22. DynamicBitrate.kt — listener 回调在主线程
- **问题**: onBitrateChanged 在主线程触发编码器参数变更，可能与编码器线程不一致。

### 23. UsbTetheringManager.kt:106 — scanForCarDevice 竞态
- **修复**: carIp/currentState 标记为 `@Volatile`。

### 24. TouchService.kt:200 — convertCoordinates 每次获取 WindowManager
- **修复**: 缓存 WindowManager 引用。

### 25. ErrorTracker.kt — errorCounts 的 mutableMapOf
- **修复**: 使用 ConcurrentHashMap。

---

## Low

### 26. Build.SERIAL 在 Android 10+ 返回 "unknown"
### 27. WindowManager.defaultDisplay 在 API 30+ 弃用
### 28. ConnectionService 重复获取分辨率
### 29. Channel.readExact() 未校验 length < 0
### 30. TcpClient targetHost 默认值问题
### 31. mDNS 服务名可能冲突
### 32. TouchService injectViaShell 安全风险
