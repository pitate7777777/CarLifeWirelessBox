# CarLifeWirelessBox

将旧 Android 手机改造为无线 CarLife 转接盒

## 项目简介

将旧 Android 手机改造为无线 CarLife 转接盒，实现：
- 接收手机 B（发射端）的无线 CarLife 连接
- 通过 USB 数据线将投屏内容转发到 WinCE 车机
- 兼容百度 CarLife WinCE 版（最后一个支持版本 3.1.0.0）

## 技术架构

```
[手机B - CarLife 6.7.2] ← WiFi → [旧手机 APP] ← USB → [WinCE 车机]
```

**双角色设计**：
- **MdRole**（MD 角色）：启动 6 个 TcpServer 监听车机连接
- **HuRole**（HU 角色）：通过 Channel 抽象连接手机 B，完成协议握手
- **StreamBridge**：在两个角色之间转发音视频和控制数据

## CarLife 版本兼容性

| 版本 | 状态 | 说明 |
|------|------|------|
| CarLife 6.7.2 及之前 | ✅ 可用 | 必须使用此版本 |
| CarLife 7.2 及之后 | ❌ 不兼容 | 连接黑屏 |

## 开发进度

### ✅ 已完成

| 模块 | 说明 |
|------|------|
| **通道抽象层** | `Channel` 统一客户端/服务端通道，6 种 `ChannelType`，协议分帧（CMD 8 字节 / Media 11 字节包头） |
| **网络层** | `TcpServer`（多客户端管理、协程）/ `TcpClient`（心跳、重连、协议分帧） |
| **HU 角色** | `HuRole` 连接手机 B，完整 3 阶段握手（认证 → 注册 → 功能协商），状态机管理 |
| **MD 角色** | `MdRole` 启动 6 端口监听，车机连接管理，简化握手流程 |
| **数据桥接** | `StreamBridge` 单通道桥接 + `StreamBridgeManager` 管理器，支持协议转换 |
| **协议转换** | `ProtocolTranslator`（H.265→H.264 / Opus→AAC 框架）、`VersionDetector` 版本检测 |
| **连接服务** | `ConnectionService` 前台服务，协调 MdRole/HuRole 生命周期，mDNS 服务广播 |
| **UI 界面** | `MainActivity` 状态监控、`SettingsActivity` 参数配置、`LogViewerActivity` 日志查看 |
| **Protobuf** | 28 个 `.proto` 文件，覆盖认证/注册/心跳/视频/音频/控制等全部 CarLife 消息 |
| **工具类** | 日志（文件保存 + 7 天轮转）、网络检测、设置管理、字节操作 |

### 🔲 待实现

| 模块 | 说明 | 优先级 |
|------|------|--------|
| **视频采集** | `VideoService` — MediaProjection 屏幕采集 + MediaCodec H.264 编码 | P0 |
| **音频采集** | `AudioService` — AudioPlaybackCapture / AudioRecord + AAC 编码 | P1 |
| **触摸注入** | `TouchService` — 车机触摸事件坐标转换 + AccessibilityService 注入 | P1 |
| **StreamBridge 集成** | 将桥接器接入 ConnectionService，实现端到端数据转发 | P0 |
| **协议握手完善** | MdRole 侧完整 CarLife 协议握手（当前为简化版） | P0 |
| **断线重连** | Wi-Fi / USB 双端自动重连机制 | P1 |
| **动态比特率** | 根据 Wi-Fi 信号强度自动调节视频码率 | P2 |

## 项目结构

```
app/src/main/java/com/carlife/wireless/
├── channel/        # 通道抽象（ChannelType, Channel, TcpChannel, TcpServerChannel）
├── model/          # 协议包头（ChannelHeader）、连接状态（KConnectionState）
├── network/        # TCP 客户端/服务端（TcpClient, TcpServer）
├── role/           # HuRole（手机侧）、MdRole（车机侧）
├── bridge/         # 数据流桥接（StreamBridge, StreamBridgeManager）
├── protocol/       # 协议转换（ProtocolTranslator）、版本检测（VersionDetector）
├── service/        # Android 服务（ConnectionService, Video/Audio/Touch/ProtocolService）
├── ui/             # 用户界面（MainActivity, SettingsActivity, LogViewerActivity）
├── receiver/       # 广播接收器（BootReceiver, WifiStateReceiver）
├── util/           # 工具类（Constants, LogUtils, NetworkUtils, SettingsManager, ByteUtils）
└── proto/          # 28 个 Protobuf 定义文件
```

## 构建要求

- Android Studio Hedgehog 或更高版本
- JDK 17
- Android SDK 34
- Gradle 8.5

## 快速开始

1. 克隆项目
   ```bash
   git clone https://github.com/pitate7777777/CarLifeWirelessBox.git
   ```

2. 用 Android Studio 打开项目，等待 Gradle 同步完成

3. 连接 Android 设备（Android 8.0+），运行 `app` 模块

4. 在手机上启动 APP，点击「启动 CarLife 服务」

## 文档

- `docs/ARCHITECTURE.md` — 系统架构文档（模块关系、数据流、接口定义）
- `docs/PRD.md` — 产品需求文档（用户故事、需求池、状态机）
- `docs/项目技术文档.md` — CarLife 协议技术调研（协议解析、开源项目分析）
- `docs/参考app分析.md` — 百度 CarLife 参考 APP 分析（反编译报告）

## 参考项目

| 项目 | 地址 | 说明 |
|------|------|------|
| CarLifeVehicleLib | https://github.com/ApolloAuto/apollo-DuerOS | 协议规范 |
| CarProjection | https://github.com/aa112901/CarProjection | 手机端实现 |
| WirelessAndroidAutoDongle | https://github.com/nisargjhaveri/WirelessAndroidAutoDongle | 桥接架构 |

## 许可证

MIT License
