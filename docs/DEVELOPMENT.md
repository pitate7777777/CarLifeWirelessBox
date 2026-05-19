# CarLife Wireless Box — 开发指南

> 本文档是项目的核心上下文，AI 辅助开发时**必须先读此文件**。

## 项目概述

将旧手机/盒子变成 CarLife 无线转接盒：手机 B（CarWith）通过 WiFi 热点连接转接盒，转接盒再通过 USB 网络共享或 WiFi 连接车机，实现无线 CarLife 投屏。

## 架构

```
手机 B (CarWith)  ←WiFi→  转接盒 (本项目)  ←USB/WiFi→  车机
   HU 端口               HuRole + MdRole              MD 端口
 7240/8240/9240          (桥接转发)              7200/8200/9200
```

### 核心角色

| 角色 | 类 | 协议角色 | 职责 | 连接方向 |
|------|-----|---------|------|----------|
| **HuRole** | `HuRole.kt` | HU (Head Unit) | 作为 HU 客户端连接手机 B CarWith，完成 CarLife 握手 | 本机 → 手机 B (HU 端口 7240/8240/...) |
| **MdRole** | `MdRole.kt` | MD (Mobile Device) | 作为 MD 服务端，被车机连接，管理车机侧握手 | 车机 → 本机 (MD 端口 7200/8200/...) |

> **命名说明**：HuRole/HuRole 是按"连接目标"命名的——HuRole 连接手机 B（扮演 HU），MdRole 被车机连接（扮演 MD）。但 MdRole 内部也会主动连接手机 B 的 CarWith HU 端口进行数据转发。

### 数据流

```
手机B(HU) → HuRole(接收) → MdRole(转发) → 车机   (视频/音频/TTS/VR)
车机 → MdRole(接收) → HuRole(转发) → 手机B(HU)   (触摸控制/VR麦克风)
```

### 通道类型（6 种）

| 通道 | HU 端口 (手机B侧) | MD 端口 (车机侧) | 方向 | 用途 | 必选 |
|------|---------|---------|------|------|------|
| CMD | 7240 | 7200 | 双向 | 协议握手 | ✅ |
| VIDEO | 8240 | 8200 | MD→HU | 视频流 (H.264) | ✅ |
| MEDIA | 9240 | 9200 | MD→HU | 媒体音频 (PCM/AAC) | ❌ |
| TTS | 9241 | 9201 | MD→HU | 导航语音 | ❌ |
| VR | 9242 | 9202 | HU→MD | 语音识别 (麦克风) | ❌ |
| CTRL | 9340 | 9300 | HU→MD | 触摸/按键控制 | ✅ |

### CarLife 协议格式

**CMD 通道（8 字节头）**：
```
[data_len(2B)][reserved(2B)][service_type(4B)] + [protobuf_data]
```

**媒体通道（12 字节头）**：
```
[data_len(4B)][timestamp(4B)][service_type(4B)] + [raw_data]
```

**注意**：`ChannelHeader` 类定义了另一种格式（带 magic 0x434C），仅用于内部 Channel 框架的 `read()` / `writeFrame()` 方法，**不用于 CarLife 协议通信**。实际通信使用 `readCarLifeMsg()` / `sendCarLifeMsg()`（CMD）和 `readCarLifeMediaMsg()` / `sendCarLifeMediaMsg()`（媒体）。

### 握手流程（8 阶段 13 步）

```
═══════ Phase 1: 协议版本协商 ═══════
1.  Box(HU) → PhoneB: HU_PROTOCOL_VERSION (0x00018001)
2.  PhoneB → Box: VERSION_MATCH_STATUS (0x00010002)

═══════ Phase 2: 设备信息交换 ═══════
3.  Box → PhoneB: HU_INFO (0x00018003)
4.  PhoneB → Box: MD_INFO (0x00010004)

═══════ Phase 3: 认证请求/响应 ════════
5.  Box → PhoneB: HU_AUTHEN_REQUEST (0x00018048)
6.  PhoneB → Box: MD_AUTHEN_RESPONSE (0x00010049)

═══════ Phase 4: 认证结果 ════════════
7.  Box → PhoneB: HU_AUTHEN_RESULT (0x0001804A)
8.  PhoneB → Box: MD_AUTHEN_RESULT (0x0001004B)

═══════ Phase 5: 特性配置 ════════════
9.  PhoneB → Box: MD_FEATURE_CONFIG_REQUEST (0x00010051)
10. Box → PhoneB: HU_FEATURE_CONFIG_RESPONSE (0x00018052)

═══════ Phase 6: 视频编码器初始化 ════
11. Box → PhoneB: VIDEO_ENCODER_INIT (0x00018007)
12. PhoneB → Box: VIDEO_ENCODER_INIT_DONE (0x00010008)

═══════ Phase 7: 开始传输 ════════════
13. Box → PhoneB: VIDEO_ENCODER_START (0x00018009)
```

> 详细协议格式和消息 ID 映射见 `docs/通讯协议分析报告.md`。

## 目录结构

```
app/src/main/java/com/carlife/wireless/
├── bridge/           # 数据流桥接（StreamBridge）
├── channel/          # TCP 通道抽象（Channel, ChannelType）
├── model/            # 数据模型（ChannelHeader, KConnectionState）
├── network/          # 网络层（TcpClient, TcpServer, UdpDiscovery, DynamicBitrate）
├── protocol/         # 协议转换（ProtocolTranslator, VersionDetector）
├── receiver/         # 广播接收器（Boot, WiFi State）
├── role/             # 核心角色（HuRole, MdRole）
├── service/          # Android 服务（Connection, Video, Audio, Touch, Protocol）
├── ui/               # 界面（MainActivity, Settings, LogViewer, NetworkDiag）
├── usb/              # USB 网络共享管理
└── util/             # 工具类（Log, Network, Settings, Constants, etc.)
```

## 开发规范

### 1. 协议兼容性

- **字节序**：CarLife 协议使用 **Big-Endian**
- **编解码器**：H.264 + AAC（WinCE 车机兼容）
- **直通模式**：未实际转码时，**必须保留原始编解码器类型**，不能标注为目标类型
- **版本**：当前协议版本 1.0，与 WinCE 车机兼容

### 2. 线程模型

| 组件 | 线程 | 说明 |
|------|------|------|
| Channel 读循环 | `Dispatchers.IO` 协程 | 每个通道独立 |
| Channel 写操作 | `writeLock` 互斥 | 防止并发写交错 |
| VideoService drain | 独立 `Thread` | MediaCodec 输出 |
| AudioService capture/drain | 独立 `Thread` | AudioRecord + MediaCodec |
| DynamicBitrate | `HandlerThread` | 定时检测信号 |

### 3. 状态管理

- 使用 `AtomicReference` / `AtomicBoolean` / `AtomicInteger` 管理状态
- 状态变更必须通过 `updateState()` 方法，触发 listener 回调
- **不要在回调中调用 `disconnect()`**——可能来自 connect() 内部清理阶段

### 4. 资源释放顺序

```
1. 关闭 socket/流（中断阻塞的 read）
2. cancel 协程 scope
3. 清理引用
```

**顺序不能反**：先 cancel scope 会导致读循环永远不退出。

### 5. 测试要求

- 每个工具类必须有单元测试
- 协议消息的序列化/反序列化必须有测试
- 测试文件放在 `app/src/test/java/com/carlife/wireless/` 对应包下
- 使用 Robolectric 测试 Android 组件（避免真机依赖）

### 6. 禁止事项

- ❌ 不要在 `sendDataRaw()` 中使用 `synchronized(this)`——会与读操作锁竞争
- ❌ 不要在媒体通道返回错误的编解码器类型
- ❌ 不要在主线程执行网络操作
- ❌ 不要硬编码 IP 地址（使用 SettingsManager）
- ❌ 不要忽略异常——至少记录日志

## 常见问题

### Q: 握手卡在第 4 步？
A: 检查 MdRole 和 HuRole 是否同时连接了手机 B 的同一组端口。只应由 HuRole 连接手机 B。

### Q: 投屏黑屏/花屏？
A: 检查编解码器类型是否匹配。手机 B 可能输出 H.265，但车机只支持 H.264。

### Q: 触摸无反应？
A: 检查 CarAccessibilityService 是否在系统设置中开启。

### Q: 连接超时？
A: 运行 NetworkDiagnostics 检查 CarWith 端口是否已监听。手机 B 必须先打开 CarWith 并进入无线连接模式。

## 依赖版本

| 依赖 | 版本 | 用途 |
|------|------|------|
| Kotlin | 1.9.24 | 语言 |
| Android Gradle Plugin | 8.2.2 | 构建 |
| Protobuf Lite | 3.25.1 | 协议序列化 |
| OkHttp | 4.12.0 | HTTP/WebSocket |
| Coroutines | 1.7.3 | 异步 |
| Material | 1.11.0 | UI |
| Robolectric | 4.11.1 | 单元测试 |

## 相关文档

| 文档 | 说明 |
|------|------|
| `docs/通讯协议分析报告.md` | CarLife 协议完整规范（包头格式、消息 ID、Protobuf 定义、版本兼容性） |
| `docs/ARCHITECTURE.md` | 系统架构（模块依赖、数据流时序图、Gradle 依赖） |
| `docs/AUDIT_REPORT.md` | 代码审计报告 |
| `docs/PRD.md` | 产品需求文档 |
