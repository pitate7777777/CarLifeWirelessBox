# CarLife Wireless Box — 二次代码审计报告

> 审计时间：2026-05-19（第二轮）
> 审计依据：更新后的 `DEVELOPMENT.md` + `通讯协议分析报告.md` + `ARCHITECTURE.md`
> 审计重点：文档与代码一致性、架构完整性、遗漏问题

---

## 审计总结

| 维度 | 评级 | 变化 |
|------|------|------|
| **协议正确性** | ⭐⭐⭐⭐ | 无变化，HuRole 握手流程正确 |
| **架构一致性** | ⭐⭐⭐ | ↓ 发现文档与代码的架构描述不一致 |
| **代码清理** | ⭐⭐⭐ | ↓ 发现未清理的废弃代码仍在使用 |
| **测试覆盖** | ⭐⭐⭐ | ↓ 源文件 43 个 vs 测试文件 29 个，缺少 UI/Service/Receiver 测试 |

---

## 发现的问题

### 🔴 高优先级 (High) — 2 项

#### H-1: MdRole 架构角色混乱 — 文档与代码不一致

**文档描述** (`DEVELOPMENT.md`):
```
MdRole — 作为 MD 服务端，被车机连接，管理车机侧握手
车机 → 本机 (MD 端口 7200/8200/...)
```

**实际代码** (`MdRole.kt:149-191`):
```kotlin
fun start() {
    val phoneBIp = SettingsManager.getPhoneBIp(context)
    // 实际是连接手机 B 的 HU 端口，而非监听 MD 端口
    for (type in config.allChannels) {
        val port = type.huPort  // ← 使用 HU 端口 (7240/8240/...)
        newChannel.connect(phoneBIp, port)
    }
}
```

**问题**:
1. `MdRole.start()` 实际连接手机 B 的 HU 端口（7240/8240/...），与 `HuRole.connect()` 行为重复
2. `ConnectionService` 只调用 `startHuRole()`，从未调用 `startMdRole()`（`startMdRole()` 方法存在但未被使用）
3. 文档描述 MdRole 为"MD 服务端被车机连接"，但代码是"MD 客户端连接手机B"
4. MD 端口（7200/8200/...）从未被监听，车机无法连接

**影响**: 车机侧连接架构未实现。当前仅实现了手机 B → 转接盒的单向连接，转接盒 → 车机的数据转发通道缺失。

**建议**:
- 明确 MdRole 的职责：是监听车机还是连接手机 B
- 如果 MdRole 应监听车机，需要改为 TcpServer 模式
- 如果 MdRole 已废弃（数据转发由 HuRole + ConnectionService 直接完成），则清理代码和文档

---

#### H-2: `Channel.send()` 使用 ChannelHeader 格式而非 CarLife 格式

**文件**: `Channel.kt:97-110`

```kotlin
fun send(payloadType: Int, payload: ByteArray, timestamp: Int = 0): Boolean {
    writeFrame(payloadType, payload, timestamp)  // ← 使用 ChannelHeader magic 格式
    return true
}
```

**问题**: `send()` 调用 `writeFrame()`，写入带 magic `0x434C` 的 ChannelHeader 格式。但 CarLife 协议不使用此格式。虽然当前实际代码路径不经过 `send()`（ConnectionService 使用 `sendCarLifeMsg()` / `sendCarLifeMediaMsg()`），但此方法是 public API，容易误导开发者。

**建议**: 标记 `send()` 为 `@Deprecated`，或在内部断言检查格式一致性。

---

### 🟡 中优先级 (Medium) — 5 项

#### M-1: ProtocolService 握手追踪未与 HuRole/MdRole 集成

**文件**: `ProtocolService.kt`, `HuRole.kt`, `MdRole.kt`

ProtocolService 定义了完整的握手追踪系统（`HandshakePhase`、`reportHandshakePhase()`、`completeHandshake()`），但 HuRole 和 MdRole 的握手流程中**从未调用**这些方法。HuRole 仅在 `ConnectionService.startHuRole()` 中调用了 `protocolService?.startHandshake()`，但后续各阶段没有上报。

**建议**: 在 HuRole 的 `handleCarLifeCmdMessage()` 各分支中添加 `protocolService?.reportHandshakePhase()` 调用。

---

#### M-2: VersionDetector 与 ProtocolTranslator 版本判断逻辑不一致

**VersionDetector.kt**:
```kotlin
fun needTranslation(major: Int, minor: Int): Boolean {
    return major > 6 || (major == 6 && minor > 7)  // 6.8+ 需要转换
}
```

**ProtocolTranslator.kt**:
```kotlin
fun translateProtocolVersion(major: Int, minor: Int): Pair<Int, Int> {
    return when {
        major >= 4 -> Pair(4, 1)           // v4.1
        major == 3 && minor >= 2 -> Pair(3, 2)  // v3.2
        major == 3 -> Pair(1, 0)           // v3.0/3.1 降级
        else -> Pair(1, 0)                 // 其他
    }
}
```

**问题**: VersionDetector 判断 `> 6.7` 才需要转换，但 ProtocolTranslator 对 `>= 4` 就做版本映射。两者逻辑不一致——如果版本是 5.0，VersionDetector 说不需要转换，但 ProtocolTranslator 会将其映射为 (1, 0)。

**建议**: 统一版本判断逻辑，或明确两者职责区分（一个判断是否需要转换，另一个执行转换）。

---

#### M-3: `StreamBridge` / `StreamBridgeManager` 仍保留在代码中

**文件**: `bridge/StreamBridge.kt`, `bridge/StreamBridgeManager.kt`

ARCHITECTURE.md 已标记为"已废弃"，但代码仍存在且有对应的测试文件（`StreamBridgeTest.kt`、`StreamBridgeManagerTest.kt`）。`StreamBridge.handleReceivedFrame()` 中调用 `targetChannel.send()` 使用的是 ChannelHeader 格式（见 H-2），如果被误用会导致协议错误。

**建议**: 添加 `@Deprecated` 注解，或直接移除。

---

#### M-4: CarLifeMsg 消息常量与协议报告对比 — 缺少部分消息

对比 `CarLifeMsg.kt` 与 `通讯协议分析报告.md` 第 6 节：

**缺少的 CMD 消息**（协议报告有，代码无）:
| 消息 ID | 常量名 | 说明 |
|---------|--------|------|
| 0x00018005 | HU_BT_PAIR_INFO | 蓝牙配对信息 |
| 0x00010006 | MD_BT_PAIR_INFO | 蓝牙配对信息 |
| 0x0001800C | VIDEO_ENCODER_FRAME_RATE_CHANGE | 帧率变更 |
| 0x0001000D | VIDEO_ENCODER_FRAME_RATE_CHANGE_DONE | 帧率变更完成 |
| 0x0001800E | PAUSE_MEDIA | 暂停媒体 |
| 0x0001800F | CAR_VELOCITY | 车速信息 |
| 0x00018010 | CAR_GPS | GPS 信息 |
| 0x00010018 | SCREEN_ON | 点亮屏幕 |
| 0x0001001B | FOREGROUND | 手机进入前台 |
| 0x00018025 | GO_TO_FOREGROUND | 请求进入前台 |

**建议**: 补充这些消息常量到 `CarLifeMsg.kt`，至少添加注释说明"已知但未实现"。

---

#### M-5: 缺少测试的源文件

源文件 43 个，测试文件 29 个。以下模块缺少测试：

| 源文件 | 说明 |
|--------|------|
| `role/CarLifeMsg.kt` | 消息常量（可加常量值验证测试） |
| `receiver/BootReceiver.kt` | 开机自启 |
| `receiver/WifiStateReceiver.kt` | WiFi 状态 |
| `service/AudioService.kt` | 音频服务 |
| `service/VideoService.kt` | 视频服务 |
| `service/CarAccessibilityService.kt` | 无障碍服务 |
| `ui/*` (7 个文件) | 所有 UI Activity |
| `util/NetworkDiagnostics.kt` | 网络诊断（有测试但标记为 NetworkDiagnosticsTest） |

**建议**: 优先为 VideoService 和 AudioService 添加单元测试（编码器创建、参数验证等可测逻辑）。

---

### 🟢 低优先级 (Low) — 3 项

#### L-1: `receiver/` 下的广播接收器缺少 `@SuppressLint` 或权限检查

`BootReceiver` 和 `WifiStateReceiver` 在 AndroidManifest 中注册，但未检查运行时权限。

#### L-2: `NestedLogScrollView.kt` 是自定义 View 但无文档

UI 层有一个自定义 `NestedLogScrollView` 但没有使用说明。

#### L-3: `generate_icons.py` 脚本未在文档中说明

根目录的 Python 脚本用途不明确。

---

## 修复建议优先级

| 优先级 | 编号 | 问题 | 工作量 |
|--------|------|------|--------|
| 🔴 高 | H-1 | MdRole 架构角色混乱 | 大 |
| 🔴 高 | H-2 | Channel.send() 格式问题 | 小 |
| 🟡 中 | M-1 | ProtocolService 未集成 | 中 |
| 🟡 中 | M-2 | 版本判断不一致 | 小 |
| 🟡 中 | M-3 | StreamBridge 废弃代码 | 小 |
| 🟡 中 | M-4 | CarLifeMsg 缺少消息 | 小 |
| 🟡 中 | M-5 | 缺少测试 | 中 |
| 🟢 低 | L-1~L-3 | 杂项 | 小 |

---

## 与首次审计对比

| 首次审计问题 | 状态 |
|-------------|------|
| H-1 设备 ID 隐私风险 | 未修复 |
| H-2 认证机制缺失 | 未修复（设计决策，非 bug） |
| H-3 UDP 发现无认证 | 未修复 |
| H-4 Shell 命令注入风险 | 未修复 |
| M-1~M-8 中优先级 | ✅ 已全部修复 |
| 本次新增 H-1 | MdRole 架构角色混乱 |
| 本次新增 H-2 | Channel.send() 格式问题 |
| 本次新增 M-1~M-5 | 集成/一致性/清理问题 |
