# CarLife Wireless Box — 代码审计报告

> 审计时间：2026-05-19
> 审计范围：全部源码（43 个 Kotlin 源文件 + 29 个测试文件）
> 审计依据：`docs/DEVELOPMENT.md` 开发规范 + 通用 Android 安全/质量标准

---

## 一、审计总结

| 维度 | 评级 | 说明 |
|------|------|------|
| **架构设计** | ⭐⭐⭐⭐ | 角色分离清晰（HuRole/MdRole），通道抽象合理 |
| **协议正确性** | ⭐⭐⭐⭐ | CarLife 协议格式正确，Big-Endian 一致，握手流程完整 |
| **线程安全** | ⭐⭐⭐⭐ | AtomicReference/AtomicBoolean 使用得当，writeLock 独立于 this |
| **资源管理** | ⭐⭐⭐⭐ | socket → scope cancel 顺序正确，finally/use 覆盖良好 |
| **测试覆盖** | ⭐⭐⭐⭐ | 29 个测试文件，核心模块均有覆盖 |
| **代码质量** | ⭐⭐⭐ | 存在一些冗余和可改进之处 |
| **安全性** | ⭐⭐⭐ | 存在需要关注的安全问题 |
| **总体** | ⭐⭐⭐⭐ | **项目质量良好，核心逻辑扎实，有若干需改进项** |

---

## 二、发现的问题

### 🔴 严重 (Critical) — 0 项

无。

### 🟠 高优先级 (High) — 4 项

#### H-1: `Build.SERIAL` 使用虽有兜底但仍有隐私风险

**文件**: `HuRole.kt:95-98`, `MdRole.kt:62-65`

```kotlin
private val DEVICE_ID: String by lazy {
    @Suppress("DEPRECATION")
    Build.SERIAL?.takeIf { it.isNotBlank() && it != "unknown" }
        ?: "box-${Build.FINGERPRINT.hashCode().toUInt()}"
}
```

**问题**: `Build.SERIAL` 在 API 29+ 已废弃且返回 null，代码有兜底逻辑。但 `Build.FINGERPRINT` 本身包含设备信息（制造商、型号、构建时间等），其 hashCode 作为设备 ID 可被逆向推测。在认证握手阶段，DEVICE_ID 会通过网络明文传输。

**建议**:
- 使用 `Settings.Secure.ANDROID_ID` 或 UUID 作为设备标识
- 如果必须用 FINGERPRINT，考虑先 SHA-256 哈希再截断

---

#### H-2: 认证被完全绕过 — 无实际认证机制

**文件**: `HuRole.kt:310-315`, `MdRole.kt:292-300`

```kotlin
// HuRole: 无论认证结果如何，都发送 HU_AUTHEN_RESULT (result=true) 绕过认证
sendAuthenResult(true)
```

**问题**: 两个角色都在握手时使用 `AUTH_METHOD_NONE` 并直接返回 `AUTHEN_RESULT_SUCCESS`，没有任何实际认证。这意味着：
- 任何连接到热点的设备都可以发起 CarLife 连接
- 没有设备白名单或配对机制
- 局域网内的恶意设备可以劫持投屏流

**建议**:
- 实现基于共享密钥的简单认证（如热点密码派生）
- 添加设备配对/白名单机制
- 至少记录连接设备的 MAC 地址用于审计

---

#### H-3: UDP 发现服务无认证，暴露全部端口信息

**文件**: `UdpDiscoveryService.kt:56-68`

```kotlin
private fun sendDiscoveryResponse(targetIp: String) {
    val response = "$RESPONSE_MAGIC|$localIp|7200|8200|9200|9201|9202|9300"
    // ...
}
```

**问题**: UDP 发现服务对任何请求都回复本机 IP 和全部 6 个端口号，没有认证或过滤。攻击者可以：
- 扫描局域网发现所有 CarLife 盒子
- 获取精确的端口映射信息
- 发起定向攻击

**建议**:
- 添加简单的 token/nonce 验证
- 限制响应频率（rate limiting）
- 考虑仅在特定网络接口上响应

---

#### H-4: `injectViaShell` 使用 `Runtime.exec` 执行 shell 命令

**文件**: `TouchService.kt:282-295`

```kotlin
private fun injectViaShell(action: Int, x: Float, y: Float) {
    val command = when (action) {
        ACTION_DOWN, ACTION_UP -> "input touchscreen tap ${x.toInt()} ${y.toInt()}"
        // ...
    }
    Runtime.getRuntime().exec(arrayOf("sh", "-c", command))
}
```

**问题**: 虽然坐标来自内部协议解析，但使用 `Runtime.exec("sh -c ...")` 是危险模式。如果上游数据被污染（如通过恶意车机发送的触摸事件），可能构成命令注入。此外 `input keyevent` 在非 root 设备上可能不工作。

**建议**:
- 使用 `Instrumentation` 或 `UiAutomation` API 替代 shell 命令
- 对坐标值做严格范围校验（已在 CoordConverter 做了 coerceIn，但应在注入前再验证）
- shell 命令使用参数化方式而非字符串拼接

---

### 🟡 中优先级 (Medium) — 8 项

#### M-1: ChannelHeader 与 CarLife 协议格式不一致

**文件**: `ChannelHeader.kt` vs `Channel.kt`

`ChannelHeader` 定义了带 magic `0x434C` 的包头格式（CMD 8 字节，Media 11 字节），但 CarLife 协议实际使用：
- CMD: `[data_len(2B)][reserved(2B)][service_type(4B)]` = 8 字节，**无 magic**
- Media: `[data_len(4B)][timestamp(4B)][service_type(4B)]` = 12 字节，**无 magic**

`Channel` 类中已经正确实现了 `readCarLifeMsg()` / `sendCarLifeMsg()` 等方法直接处理 CarLife 格式，但 `read()` / `writeFrame()` 方法仍使用 `ChannelHeader` 格式。两套格式并存容易造成混淆。

**建议**:
- 在 `ChannelHeader` 上添加注释明确区分两种格式
- 考虑将 `read()` / `writeFrame()` 标记为 `@Deprecated` 或内部方法
- 确保所有实际通信都使用 CarLife 格式方法

---

#### M-2: TcpClient 的 `readLoop()` 使用 ChannelHeader magic 格式

**文件**: `TcpClient.kt:151-175`

```kotlin
val magic = ((magicAndType[0].toInt() and 0xFF) shl 8) or
            (magicAndType[1].toInt() and 0xFF)
if (magic != 0x434C) {
    LogUtils.e("$TAG: Invalid magic: 0x${Integer.toHexString(magic)}, skipping byte")
    continue
}
```

**问题**: `TcpClient` 使用 `ChannelHeader` 的 magic `0x434C` 格式读取数据，但实际 CarLife 协议不使用这个 magic。`TcpClient` 目前看起来是遗留代码（`Channel` 类已取代其功能），但如果仍有组件使用它，会导致协议解析失败。

**建议**:
- 确认 `TcpClient` 是否仍被使用，如已废弃则标记 `@Deprecated`
- 如果仍需使用，应改为 CarLife 协议格式解析

---

#### M-3: 重连延迟使用位移可能溢出

**文件**: `ConnectionService.kt:335`, `TcpClient.kt:114`

```kotlin
val delayMs = Constants.Reconnect.DELAY_MS * (1L shl (attempt - 1))
```

**问题**: 当 `attempt` 较大时（如 20+），`1L shl attempt` 会产生极大值。虽然 `maxHuReconnect = 5` 限制了实际尝试次数，但如果未来修改重试次数上限，可能导致溢出。

**建议**: 添加上限截断：
```kotlin
val delayMs = minOf(
    Constants.Reconnect.DELAY_MS * (1L shl (attempt - 1)),
    60_000L // 最大 60 秒
)
```

---

#### M-4: VideoService drain 线程未正确处理编码器异常状态

**文件**: `VideoService.kt:175-210`

```kotlin
} catch (e: IllegalStateException) {
    if (isStreaming.get()) {
        LogUtils.e(TAG, e, "Encoder drain error (state error)")
    }
    break
}
```

**问题**: 当编码器进入错误状态时，仅 break 退出循环但没有通知上层。`FrameCallback.onError()` 未被调用，上层无法知道视频流已中断。

**建议**: 在 catch 块中调用 `frameCallback?.onError("Encoder state error: ${e.message}")`

---

#### M-5: AudioService 的 capture 和 drain 使用独立线程但无同步

**文件**: `AudioService.kt:170-240`

`captureAndEncode()` 和 `drainEncoder()` 在独立线程中运行，共享 `encoder` 实例。虽然 MediaCodec 内部有线程安全保护，但 `encoder` 变量本身是 `@Volatile` 而非 synchronized，在极端情况下（stop() 并发）可能读到 null 后仍尝试操作。

**建议**: 在两个线程的循环开始处统一检查 `isStreaming` 和 `encoder` 状态，或使用 `synchronized(encoder!!)` 块。

---

#### M-6: SettingsManager 使用 `Context.MODE_PRIVATE` 但无加密

**文件**: `SettingsManager.kt`

所有设置存储在 SharedPreferences 中，使用 `MODE_PRIVATE`。虽然不涉及高敏感数据，但手机 B 的 IP 地址等配置信息以明文存储。

**建议**: 对于 Android 开发最佳实践，考虑使用 `EncryptedSharedPreferences`（Jetpack Security 库）。

---

#### M-7: LogUtils 在 release 版本中可能泄露敏感信息

**文件**: `LogUtils.kt`

日志系统支持文件日志（`fileLogEnabled`），会将所有日志写入外部存储。日志中可能包含：
- IP 地址
- 端口号
- 设备信息
- 协议消息内容

**建议**:
- 在 release 构建中默认关闭控制台日志和文件日志
- 对日志内容进行脱敏处理（如 IP 地址部分遮盖）
- 日志文件设置自动清理策略（当前 LogFileManager 有 7 天清理）

---

#### M-8: BroadcastReceiver 使用 `RECEIVER_NOT_EXPORTED` 但仍有安全隐患

**文件**: `MainActivity.kt:88-89`

```kotlin
ContextCompat.registerReceiver(this, stateReceiver, filter, ContextCompat.RECEIVER_NOT_EXPORTED)
```

**问题**: 虽然使用了 `RECEIVER_NOT_EXPORTED`，但 `ConnectionService` 中的 `sendBroadcast()` 使用隐式广播（仅设置 `package`）。在 Android 14+ 上这可能被限制。此外，状态广播中包含了 IP 地址、连接状态等信息。

**建议**: 考虑使用 `LocalBroadcastManager` 或 `Flow`/`LiveData` 替代全局广播。

---

### 🟢 低优先级 (Low) — 6 项

#### L-1: `MdRole` 中重复定义了 `HuRole.CarEncoderConfig` 相关逻辑

`MdRole` 缓存了 `cachedCarEncoderConfig` 并同步给 `HuRole`，但 `HuRole` 已有 `carEncoderConfig` 属性。可以考虑统一管理。

#### L-2: `StreamBridge` 类未被实际使用

`StreamBridge` 和 `StreamBridgeManager` 在当前架构中未被调用（数据转发由 `ConnectionService` 直接协调 `HuRole` 和 `MdRole`）。应标记为 `@Deprecated` 或移除。

#### L-3: `TcpServer` 的便捷构造函数使用了硬编码的 `ChannelType.HU_CMD`

```kotlin
constructor(port: Int, listener: TcpServerListener?, autoRead: Boolean = true) : this(
    ChannelType.HU_CMD, DeviceRole.HU, listener, autoRead
)
```

这可能导致端口与类型不匹配。建议移除便捷构造函数或添加端口-类型映射。

#### L-4: `Channel.create()` 总是返回 `TcpChannel`，`wrap()` 返回 `TcpServerChannel`

工厂方法命名可以更清晰，如 `createClient()` 和 `wrapServer()`。

#### L-5: 魔数散布在代码中

`TouchService` 中的 `0x00068001` 等已通过 `CarLifeMsg` 常量定义，但 `ConnectionService` 中仍有 `0x00020001`（MSG_VIDEO_DATA）和 `0x00030006`（MSG_MEDIA_DATA）等硬编码。

**建议**: 统一使用 `CarLifeMsg` 常量。

#### L-6: `generate_icons.py` 脚本使用 Python 但无版本要求

项目根目录的 `generate_icons.py` 未指定 Python 版本要求，可能在不同环境下行为不一致。

---

## 三、架构亮点 ✅

1. **角色分离设计优秀**: `HuRole`（连接手机B）和 `MdRole`（被车机连接）职责清晰，通过 `ConnectionService` 协调，避免了早期双重连接的 bug。

2. **通道抽象合理**: `Channel` 类封装了 TCP 连接和协议读写，`ChannelType` 枚举定义了 6 种通道的端口映射，扩展性好。

3. **线程模型正确**:
   - `writeLock` 独立于 `this`，避免读写锁竞争
   - `AtomicReference` / `AtomicBoolean` 管理状态
   - 协程使用 `SupervisorJob` 保证子协程独立失败

4. **资源释放顺序正确**: 先关闭 socket（中断阻塞 read）→ 再 cancel scope，符合 DEVELOPMENT.md 规范。

5. **CarEncoderConfig 设计巧妙**: MdRole 从车机捕获编码能力并同步给 HuRole，确保手机B输出的编码格式与车机兼容。

6. **测试覆盖良好**: 29 个测试文件覆盖了核心模块，包括边界情况测试（`ChannelHeaderEdgeCaseTest`）。

7. **错误追踪完善**: `ErrorTracker` 提供了错误分类、统计和诊断报告功能，便于调试。

---

## 四、建议优先级排序

| 优先级 | 编号 | 问题 | 工作量 |
|--------|------|------|--------|
| 🔴 高 | H-1 | 设备 ID 隐私风险 | 小 |
| 🔴 高 | H-2 | 认证机制缺失 | 中 |
| 🔴 高 | H-3 | UDP 发现无认证 | 小 |
| 🔴 高 | H-4 | Shell 命令注入风险 | 中 |
| 🟡 中 | M-1 | ChannelHeader 格式混淆 | 小 |
| 🟡 中 | M-2 | TcpClient 遗留代码 | 小 |
| 🟡 中 | M-3 | 重连延迟溢出 | 小 |
| 🟡 中 | M-4 | VideoService 错误通知缺失 | 小 |
| 🟡 中 | M-5 | AudioService 线程同步 | 小 |
| 🟡 中 | M-6 | SharedPreferences 未加密 | 小 |
| 🟡 中 | M-7 | 日志信息泄露 | 小 |
| 🟡 中 | M-8 | 广播安全隐患 | 中 |
| 🟢 低 | L-1~L-6 | 代码清理和规范化 | 小 |

---

## 五、结论

CarLife Wireless Box 是一个**架构清晰、核心逻辑扎实**的 Android 项目。角色分离、通道抽象、线程模型等核心设计都做得很好。测试覆盖率达到合理水平。

主要改进方向：
1. **安全性**: 添加基本的认证机制，避免任何设备都能连接
2. **代码清理**: 移除遗留的 `TcpClient`、`StreamBridge` 等未使用代码
3. **日志安全**: 在 release 版本中收紧日志输出

项目整体质量**高于平均水平**，可以投入使用，但建议优先处理高优先级安全问题。
