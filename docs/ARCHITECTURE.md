# CarLifeWirelessBox 系统架构文档

> **项目目标**：将旧 Android 手机改造为无线 CarLife 转接盒  
> **架构版本**：v1.2（与代码同步）  
> **日期**：2026-05-11

---

## 目录

1. [项目结构](#1-项目结构)
2. [模块依赖关系图](#2-模块依赖关系图)
3. [数据流时序图](#3-数据流时序图)
4. [核心数据结构/接口定义](#4-核心数据结构接口定义)
5. [Gradle 依赖清单](#5-gradle-依赖清单)
6. [共享约定](#6-共享约定)
7. [Protobuf 处理方案](#7-protobuf-处理方案)
8. [关键技术点说明](#8-关键技术点说明)

---

## 1. 项目结构

### 1.1 实际文件列表

```
CarLifeWirelessBox/
├── app/
│   ├── build.gradle.kts                    # 应用模块构建配置
│   ├── proguard-rules.pro                  # 混淆规则
│   └── src/
│       ├── main/
│       │   ├── AndroidManifest.xml
│       │   ├── java/com/carlife/wireless/
│       │   │   ├── CarLifeApplication.kt   # Application 入口
│       │   │   ├── channel/
│       │   │   │   └── Channel.kt          # 通道抽象（ChannelType, DeviceRole, Channel, TcpChannel, TcpServerChannel）
│       │   │   ├── model/
│       │   │   │   ├── ChannelHeader.kt    # 协议包头（Cmd 8字节, Media 11字节）
│       │   │   │   └── KConnectionState.kt # 连接状态枚举
│       │   │   ├── network/
│       │   │   │   ├── TcpClient.kt        # TCP 客户端（协议分帧、心跳、重连）
│       │   │   │   └── TcpServer.kt        # TCP 服务端（多客户端管理）
│       │   │   ├── role/
│       │   │   │   ├── HuRole.kt           # HU 角色（连接手机 B，协议握手）
│       │   │   │   └── MdRole.kt           # MD 角色（监听车机连接）
│       │   │   ├── bridge/
│       │   │   │   ├── StreamBridge.kt     # 数据流桥接器
│       │   │   │   └── StreamBridgeManager.kt # 桥接管理器
│       │   │   ├── protocol/
│       │   │   │   ├── ProtocolTranslator.kt # 协议版本/编解码转换
│       │   │   │   └── VersionDetector.kt  # 版本检测
│       │   │   ├── service/
│       │   │   │   ├── ConnectionService.kt # 连接服务（前台服务，协调 MdRole/HuRole）
│       │   │   │   ├── ProtocolService.kt  # 协议服务（占位）
│       │   │   │   ├── VideoService.kt     # 视频服务（占位）
│       │   │   │   ├── AudioService.kt     # 音频服务（占位）
│       │   │   │   └── TouchService.kt     # 触摸服务（占位）
│       │   │   ├── ui/
│       │   │   │   ├── MainActivity.kt     # 主界面
│       │   │   │   ├── SettingsActivity.kt # 设置界面
│       │   │   │   ├── LogViewerActivity.kt # 日志查看器
│       │   │   │   ├── NetworkDiagActivity.kt # 网络诊断
│       │   │   │   ├── UsbGuideActivity.kt # USB 连接引导（4步）
│       │   │   │   ├── WifiGuideActivity.kt # WiFi 无线连接引导（5步）
│       │   │   │   └── VideoPreviewHelper.kt # 视频预览辅助
│       │   │   ├── receiver/
│       │   │   │   ├── BootReceiver.kt     # 开机自启
│       │   │   │   └── WifiStateReceiver.kt # WiFi 状态监听
│       │   │   └── util/
│       │   │       ├── Constants.kt        # 协议常量（端口、超时、IP 地址）
│       │   │       ├── ByteUtils.kt        # 字节操作工具
│       │   │       ├── CoordConverter.kt   # 坐标转换工具
│       │   │       ├── LogUtils.kt         # 日志工具（支持文件保存）
│       │   │       ├── LogFileManager.kt   # 日志文件管理（7天轮转）
│       │   │       ├── NetworkUtils.kt     # 网络工具（IP 获取、热点网关、Ping）
│       │   │       ├── NetworkDiagnostics.kt # 网络诊断（WiFi/热点/端口检测）
│       │   │       ├── ErrorTracker.kt     # 错误追踪
│       │   │       └── SettingsManager.kt  # 设置管理（SharedPreferences）
│       │   ├── proto/                      # 28 个 .proto 文件
│       │   │   ├── carlife_common.proto
│       │   │   ├── carlife_cmd.proto
│       │   │   ├── carlife_heartbeat.proto
│       │   │   ├── CarlifeAuthenRequestProto.proto
│       │   │   ├── CarlifeAuthenResponseProto.proto
│       │   │   ├── CarlifeRegisterRequestProto.proto
│       │   │   ├── CarlifeRegisterResponseProto.proto
│       │   │   ├── CarlifeFeatureConfigProto.proto
│       │   │   ├── CarlifeVideoEncoderInfoProto.proto
│       │   │   └── ... (共 28 个)
│       │   └── res/
│       │       ├── layout/                 # 7 个布局文件（main, settings, log_viewer, network_diag, usb_guide, wifi_guide, dialog）
│       │       ├── values/                 # strings, colors, styles, arrays
│       │       ├── menu/                   # main_menu, log_viewer_menu
│       │       ├── drawable/               # 图标
│       │       ├── mipmap/                 # 启动图标
│       │       └── xml/                    # file_paths, data_extraction_rules
│       └── test/                           # （待添加）
├── docs/
│   ├── ARCHITECTURE.md                     # 本文档
│   ├── PRD.md                              # 产品需求文档
│   ├── 项目技术文档.md                      # CarLife 协议技术调研
│   └── 参考app分析.md                       # 百度 CarLife 参考 APP 分析
├── 参考app/                                # 参考 APP 反编译资源
├── build.gradle.kts                        # 根项目构建配置
├── settings.gradle.kts                     # 项目设置
├── gradle.properties                       # Gradle 属性
├── gradlew / gradlew.bat                   # Gradle Wrapper
├── generate_icons.py                       # 图标生成脚本
└── README.md
```

### 1.2 包结构说明

| 包名 | 职责 |
|------|------|
| `channel` | 通道抽象层（ChannelType 枚举、Channel 抽象类、TCP 实现） |
| `model` | 数据模型（协议包头 ChannelHeader、连接状态 KConnectionState） |
| `network` | 网络层（TcpClient 客户端、TcpServer 服务端） |
| `role` | 双角色逻辑（HuRole 连接手机 B、MdRole 监听车机） |
| `bridge` | 数据桥接（StreamBridge 单通道桥接、StreamBridgeManager 管理器） |
| `protocol` | 协议处理（ProtocolTranslator 版本转换、VersionDetector 版本检测） |
| `service` | Android 服务（ConnectionService 核心协调、Video/Audio/Touch 占位） |
| `ui` | 用户界面（MainActivity、SettingsActivity、LogViewerActivity、NetworkDiagActivity、UsbGuideActivity、WifiGuideActivity） |
| `receiver` | 广播接收器（开机自启、WiFi 状态变化） |
| `util` | 工具类（常量、字节操作、日志、网络、设置、网络诊断、错误追踪） |

---

## 2. 模块依赖关系图

```mermaid
graph TD
    UI[ui] --> Service[service]
    Service --> Role[role]
    Service --> Bridge[bridge]
    Role --> Channel[channel]
    Role --> Proto[proto]
    Bridge --> Channel
    Bridge --> Protocol[protocol]
    Channel --> Model[model]
    Network[network] --> Model

    subgraph "核心层"
        Channel
        Model
    end

    subgraph "角色层"
        Role
    end

    subgraph "桥接层"
        Bridge
        Protocol
    end

    subgraph "服务层"
        Service
    end

    subgraph "UI 层"
        UI
    end

    subgraph "网络层"
        Network
    end

    style Channel fill:#e1f5fe
    style Model fill:#e1f5fe
    style Role fill:#f3e5f5
    style Bridge fill:#fff3e0
    style Service fill:#e8f5e9
    style UI fill:#fce4ec
```

### 关键设计决策

**统一通道抽象**：`Channel` 类同时被 `HuRole`（客户端连接）和 `MdRole`（服务端接受连接）使用，确保协议分帧和包头处理的一致性。

- `Channel.create(type, role)` → 创建 TCP 客户端通道（HuRole 使用）
- `Channel.wrap(type, role, socket)` → 包装已连接 Socket（TcpServer/MdRole 使用）

---

## 3. 数据流时序图

### 3.1 完整握手与数据传输时序

```mermaid
sequenceDiagram
    participant HU as 手机B (CarWith)
    participant Bridge as 旧手机 (Bridge)
    participant Car as WinCE 车机
    
    Note over Bridge: === 启动阶段 ===
    Bridge->>Bridge: ConnectionService 启动
    Bridge->>Bridge: HuRole 创建 6 个 Channel 连接手机 B<br/>(7240/8240/9240/9241/9242/9340)
    Bridge->>Bridge: MdRole 启动 6 个 TcpServer<br/>(7200/8200/9200/9201/9202/9300)
    
    Note over Bridge,Car: === MD 角色：等待车机连接 ===
    Car->>Bridge: TCP 连接请求 (6 个通道)
    Bridge->>Bridge: Channel.wrap() 包装已连接 Socket
    
    Note over Bridge,HU: === Phase 1: 协议版本协商 ===
    Bridge->>HU: 【CMD】HU_PROTOCOL_VERSION (0x00018001)
    HU-->>Bridge: 【CMD】VERSION_MATCH_STATUS (0x00010002)
    
    Note over Bridge,HU: === Phase 2: 设备信息交换 ===
    Bridge->>HU: 【CMD】HU_INFO (0x00018003)
    HU-->>Bridge: 【CMD】MD_INFO (0x00010004)
    
    Note over Bridge,HU: === Phase 3: 认证请求/响应 ===
    Bridge->>HU: 【CMD】HU_AUTHEN_REQUEST (0x00018048, AUTH_METHOD_NONE)
    HU-->>Bridge: 【CMD】MD_AUTHEN_RESPONSE (0x00010049, success=true)
    
    Note over Bridge,HU: === Phase 4: 认证结果 ===
    Bridge->>HU: 【CMD】HU_AUTHEN_RESULT (0x0001804A, SUCCESS)
    HU-->>Bridge: 【CMD】MD_AUTHEN_RESULT (0x0001004B, SUCCESS)
    
    Note over Bridge,HU: === Phase 5: 特性配置 ===
    HU-->>Bridge: 【CMD】MD_FEATURE_CONFIG_REQUEST (0x00010051)
    Bridge->>HU: 【CMD】HU_FEATURE_CONFIG_RESPONSE (0x00018052)
    
    Note over Bridge,HU: === Phase 6: 视频编码器协商 ===
    Bridge->>HU: 【CMD】VIDEO_ENCODER_INIT (0x00018007)
    HU-->>Bridge: 【CMD】VIDEO_ENCODER_INIT_DONE (0x00010008)
    
    Note over Bridge,HU: === Phase 7: 开始传输 ===
    Bridge->>Hu: 【CMD】VIDEO_ENCODER_START (0x00018009)
    
    Note over Bridge: === 数据传输阶段 ===
    loop 视频流
        HU->>Bridge: 【VIDEO】H.264 帧 (12字节媒体包头)
        Bridge->>Car: 【VIDEO】透传 H.264 帧
    end
    
    loop 音频流
        HU->>Bridge: 【MEDIA】音频帧 (12字节媒体包头)
        Bridge->>Car: 【MEDIA】透传音频帧
    end
    
    loop 触摸事件
        Car->>Bridge: 【CTRL】触摸事件 (8字节CMD包头)
        Bridge->>HU: 【CTRL】转发触摸事件
    end
```

### 3.2 通道端口映射

```mermaid
graph LR
    subgraph "手机B (HU 角色)"
        H1[CMD: 7240]
        H2[VIDEO: 8240]
        H3[MEDIA: 9240]
        H4[TTS: 9241]
        H5[VR: 9242]
        H6[CTRL: 9340]
    end
    
    subgraph "Bridge (双角色)"
        B1[MD_CMD: 7200]
        B2[MD_VIDEO: 8200]
        B3[MD_MEDIA: 9200]
        B4[MD_TTS: 9201]
        B5[MD_VR: 9202]
        B6[MD_CTRL: 9300]
    end
    
    subgraph "WinCE 车机"
        C1[连接 7200]
        C2[连接 8200]
        C3[连接 9200]
        C4[连接 9201]
        C5[连接 9202]
        C6[连接 9300]
    end
    
    H1 --> B1
    H2 --> B2
    H3 --> B3
    H4 --> B4
    H5 --> B5
    H6 --> B6
    B1 --> C1
    B2 --> C2
    B3 --> C3
    B4 --> C4
    B5 --> C5
    B6 --> C6
```

---

## 4. 核心数据结构/接口定义

### 4.1 通道模型 (channel/)

```kotlin
// ChannelType.kt — 6 种 CarLife 通道
enum class ChannelType(val huPort: Int, val mdPort: Int) {
    HU_CMD(7240, 7200),
    HU_VIDEO(8240, 8200),
    HU_MEDIA(9240, 9200),
    HU_TTS(9241, 9201),
    HU_VR(9242, 9202),
    HU_CTRL(9340, 9300);

    fun getPort(role: DeviceRole): Int
    fun isMediaChannel(): Boolean  // VIDEO/MEDIA/TTS/VR → true
}

// DeviceRole.kt
enum class DeviceRole { HU, MOBILE }

// Channel.kt — 抽象通道
abstract class Channel(val type: ChannelType, val role: DeviceRole) {
    var state: KConnectionState
    var callback: ChannelCallback?
    val isConnected: Boolean

    fun send(payloadType: Int, payload: ByteArray, timestamp: Int = 0): Boolean
    fun connect(host: String, port: Int)
    fun disconnect(reason: String? = null)
    fun read(): Pair<ChannelHeader, ByteArray>?
}
```

### 4.2 协议包头 (model/)

CarLife 协议有两种包头格式，均为 Big-Endian 字节序：

**CMD 通道包头（8 字节，用于 CMD/CTRL 通道）**：
```
┌─────────────┬──────────┬──────────────┬──────────────────┐
│ data_len    │ reserved │ service_type │ protobuf_data    │
│ 2B          │ 2B       │ 4B           │ 变长              │
└─────────────┴──────────┴──────────────┴──────────────────┘
```

**媒体通道包头（12 字节，用于 VIDEO/MEDIA/TTS/VR 通道）**：
```
┌─────────────┬───────────┬──────────────┬──────────────┐
│ data_len    │ timestamp │ service_type │ raw_data     │
│ 4B          │ 4B        │ 4B           │ 变长          │
└─────────────┴───────────┴──────────────┴──────────────┘
```

本项目 `ChannelHeader` 密封类是内部抽象格式（带 magic 0x434C），仅供 `Channel.read()` / `writeFrame()` 使用。实际 CarLife 通信使用 `readCarLifeMsg()` / `sendCarLifeMsg()` 方法，采用上述标准格式。

> 详细格式说明和解析代码见 `docs/通讯协议分析报告.md` 第 3 节。

### 4.3 角色接口 (role/)

```kotlin
// HuRole — HU 角色（连接手机 B，作为 HU 客户端完成 CarLife 握手）
class HuRole(context: Context, phoneBIp: String, listener: HuRoleListener? = null) {
    fun connect()          // 连接手机 B 的 CarWith HU 端口
    fun disconnect(reason: String?)
    fun release()
    fun getState(): HuState
    fun isConnected(): Boolean
    var channelConfig: ChannelConfig  // 通道开关配置
    var carEncoderConfig: CarEncoderConfig  // 车机编码能力（由 MdRole 同步）
}

// MdRole — MD 角色（监听车机连接，管理车机侧握手和数据转发）
class MdRole(context: Context) {
    fun start()   // 启动 6 个 TcpServer，连接手机 B CarWith
    fun stop()
    fun setStateListener(listener: (MdState) -> Unit)
    fun setHuRole(huRole: HuRole)  // 注入 HuRole 用于数据转发
    fun isReady(): Boolean
    fun sendData(port: Int, payloadType: Int, data: ByteArray): Boolean  // 向车机发送数据
    fun sendControlData(serviceType: Int, data: ByteArray): Boolean      // 向车机发送控制
}
```

### 4.4 网络层 (network/)

```kotlin
// TcpServer — 监听端口，接受客户端连接
class TcpServer(type: ChannelType, role: DeviceRole, listener: TcpServerListener) {
    fun start(port: Int)
    fun stop()
    fun release()  // stop + 取消协程
}

// TcpClient — TCP 客户端（支持协议分帧、心跳、重连）
class TcpClient(context: Context, listener: TcpClientListener) {
    fun connect(host: String, port: Int)
    fun disconnect()
    fun sendData(header: ChannelHeader, payload: ByteArray): Boolean
}
```

---

## 5. Gradle 依赖清单

### 5.1 根项目 build.gradle.kts

```kotlin
plugins {
    id("com.android.application") version "8.2.2" apply false
    id("org.jetbrains.kotlin.android") version "1.9.24" apply false
    id("com.google.protobuf") version "0.9.4" apply false
}
```

### 5.2 应用模块 build.gradle.kts

| 依赖 | 版本 | 用途 |
|------|------|------|
| `androidx.core:core-ktx` | 1.12.0 | AndroidX 核心 |
| `androidx.appcompat:appcompat` | 1.6.1 | 向后兼容 |
| `com.google.android.material:material` | 1.11.0 | Material Design |
| `androidx.constraintlayout:constraintlayout` | 2.1.4 | 布局 |
| `androidx.lifecycle:lifecycle-*` | 2.7.0 | 生命周期 |
| `org.jetbrains.kotlin:kotlin-stdlib` | 1.9.24 | Kotlin 标准库 |
| `org.jetbrains.kotlinx:kotlinx-coroutines-*` | 1.7.3 | 协程 |
| `com.google.protobuf:protobuf-javalite` | 3.25.1 | Protobuf Lite |
| `com.squareup.okhttp3:okhttp` | 4.12.0 | HTTP 客户端 |
| `org.java-websocket:Java-WebSocket` | 1.5.4 | WebSocket |
| `com.google.code.gson:gson` | 2.10.1 | JSON |
| `com.elvishew:xlog` | 1.11.1 | 日志（未使用，保留） |

### 5.3 Gradle 属性

```properties
org.gradle.jvmargs=-Xmx2048m -Dfile.encoding=UTF-8
android.useAndroidX=true
kotlin.code.style=official
android.nonTransitiveRClass=true
protobuf.version=3.25.1
# org.gradle.java.home=<本地 JDK 17 路径>
```

---

## 6. 共享约定

### 6.1 端口定义

```kotlin
// HU 侧端口（手机 B / CarWith）
object Port {
    const val HU_CMD   = 7240
    const val HU_VIDEO = 8240
    const val HU_MEDIA = 9240
    const val HU_TTS   = 9241
    const val HU_VR    = 9242
    const val HU_CTRL  = 9340
}

// MD 侧端口（车机连接目标）
object PortMD {
    const val MD_CMD   = 7200
    const val MD_VIDEO = 8200
    const val MD_MEDIA = 9200
    const val MD_TTS   = 9201
    const val MD_VR    = 9202
    const val MD_CTRL  = 9300
}
```

### 6.2 心跳参数

| 参数 | 值 | 说明 |
|------|-----|------|
| 心跳间隔 | 3000ms | 每 3 秒发送一次 |
| 心跳超时 | 9000ms | 3 次未收到则判定断开 |

### 6.3 日志规范

- 使用 `LogUtils` 工具类，TAG 格式：`CarLifeWireless`
- 支持日志保存到文件（`LogFileManager`，保留 7 天）
- 级别：D(调试) / I(信息) / W(警告) / E(错误)

---

## 7. Protobuf 处理方案

### 7.1 方案：protobuf-javalite

使用 `protobuf-javalite`（适合移动端），通过 Gradle 插件自动生成 Java 类。

### 7.2 .proto 文件组织

所有 `.proto` 文件位于 `app/src/main/proto/`，统一使用：

```protobuf
syntax = "proto3";
package carlife;
option java_package = "com.carlife.wireless.proto";
option java_outer_classname = "XxxProto";
```

### 7.3 关键 Proto 文件

| 文件 | 外部类名 | 关键消息 |
|------|---------|---------|
| `CarlifeAuthenRequestProto.proto` | `CarlifeAuthenRequestProto` | `CarlifeAuthenRequest` |
| `CarlifeAuthenResponseProto.proto` | `CarlifeAuthenResponseProto` | `CarlifeAuthenResponse` |
| `CarlifeRegisterRequestProto.proto` | `CarlifeRegisterRequestProto` | `CarlifeRegisterRequest` |
| `CarlifeRegisterResponseProto.proto` | `CarlifeRegisterResponseProto` | `CarlifeRegisterResponse` |
| `CarlifeFeatureConfigProto.proto` | `CarlifeFeatureConfigProto` | `CarlifeFeatureConfig` |
| `CarlifeVideoEncoderInfoProto.proto` | `CarlifeVideoEncoderInfoProto` | `CarlifeVideoEncoderInfo` |
| `carlife_heartbeat.proto` | `CarlifeHeartbeatProto` | `CarlifeHeartbeat` |
| `carlife_auth_method.proto` | `CarlifeAuthMethodProto` | `AuthMethod` (enum) |
| `carlife_device_info.proto` | `CarlifeDeviceInfoProto` | `CarlifeDeviceInfo`, `DeviceType`, `OsType` |
| `carlife_register_type.proto` | `CarlifeRegisterTypeProto` | `RegisterType`, `RegisterResultCode` (enum) |

---

## 8. 关键技术点说明

### 8.1 认证绕过

HuRole 发送 `AuthMethod.AUTH_METHOD_NONE`，不进行真正的认证。对于不支持认证的旧版 CarLife（6.7.2），直接视为成功。

### 8.2 协议版本锁定

强制使用协议版本 `1.0`，确保与 CarWith 兼容。`VersionDetector` 检测高版本（7.2+）时标记需要协议转换。v2.3.0 新增版本检测支持（v3.2 允许、v4.1 推荐）。

> 详细版本兼容性分析见 `docs/通讯协议分析报告.md` 第 9 节。

### 8.3 视频流透传

当前视频流直接透传，不做编解码转换。`ProtocolTranslator` 提供了 H.265→H.264 和 Opus→AAC 的转换框架（TODO：MediaCodec 实现）。

### 8.4 双角色架构

- **HuRole**（HU 角色）：通过 6 个 Channel 主动连接手机 B 的 CarWith HU 端口，完成 7 阶段 CarLife 握手（版本→设备→认证→认证结果→特性→编码器→开始）
- **MdRole**（MD 角色）：启动 6 个 TcpServer 监听车机连接，同时主动连接手机 B CarWith 进行数据转发。捕获车机编码器配置并同步给 HuRole
- **ConnectionService**：协调两个角色的生命周期，通过 HuRoleListener 回调实现手机B→车机的数据转发

### 8.5 Channel 统一抽象

`Channel` 类统一了客户端和服务端的通道操作：
- 客户端：`Channel.create()` → `TcpChannel`（主动 connect）
- 服务端：`Channel.wrap()` → `TcpServerChannel`（包装已连接 Socket）
- CarLife 协议读写：`readCarLifeMsg()` / `sendCarLifeMsg()`（CMD 8字节）和 `readCarLifeMediaMsg()` / `sendCarLifeMediaMsg()`（媒体 12字节）
- 内部格式读写：`read()` / `writeFrame()`（ChannelHeader 格式，带 magic 0x434C，仅内部使用）

### 8.6 开发进度

**已完成模块**：
- ✅ 通道抽象层（Channel / ChannelType / DeviceRole）
- ✅ 网络层（TcpServer / TcpClient / UdpDiscovery / DynamicBitrate）
- ✅ HU 角色（HuRole，完整 7 阶段握手：版本→设备→认证→结果→特性→编码器→开始）
- ✅ MD 角色（MdRole，6 端口监听 + 车机侧握手 + 编码器配置同步）
- ✅ 数据转发（ConnectionService 直接协调 HuRole/MdRole，无需 StreamBridge）
- ✅ 协议转换框架（ProtocolTranslator / VersionDetector / TranscodePipeline）
- ✅ 视频服务（VideoService，MediaProjection + MediaCodec H.264）
- ✅ 音频服务（AudioService，AudioPlaybackCapture + MediaCodec AAC）
- ✅ 触摸服务（TouchService，CarLife 触摸事件解析 + 坐标转换 + AccessibilityService 注入）
- ✅ 无障碍服务（CarAccessibilityService，dispatchGesture 触摸注入）
- ✅ 连接服务（ConnectionService 前台服务 + mDNS 广播 + UDP 发现 + 子服务协调 + 自动重连）
- ✅ UI 界面（主界面 / 设置 / 日志查看器 / 网络诊断 / USB引导 / WiFi引导）
- ✅ Protobuf 定义（28 个 proto 文件）
- ✅ 工具类（日志文件轮转 / 网络检测 / 设置管理 / 错误追踪 / 坐标转换）
- ✅ 单元测试（29 个测试文件，覆盖核心模块）

**已废弃代码**（保留向后兼容）：
- ⚠️ `TcpClient` — 使用 ChannelHeader magic 格式，已被 Channel 类替代
- ⚠️ `StreamBridge` / `StreamBridgeManager` — 未被实际使用，数据转发由 ConnectionService 直接协调

---

## 变更记录

| 版本 | 日期 | 变更内容 |
|------|------|---------|
| v1.3 | 2026-05-19 | 根据通讯协议分析报告修正握手时序图（3阶段→7阶段）；修正 ChannelHeader 描述；更新角色接口；更新开发进度 |
| v1.2 | 2026-05-11 | 更新 HuRole 接口定义（移除冗余 setListener）；新增开发进度章节 |
| v1.1 | 2026-05-11 | 与代码同步，完善模块依赖图和时序图 |
| v1.0 | 2026-05-10 | 初始版本 |
