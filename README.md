# CarLifeWirelessBox

将旧 Android 手机改造为无线 CarLife 转接盒

## 项目简介

将旧 Android 手机改造为无线 CarLife 转接盒，实现：
- 接收手机 B（CarWith 发射端）的无线 CarLife 连接
- 通过 USB 数据线将投屏内容转发到 WinCE 车机
- 兼容百度 CarLife WinCE 版（最后一个支持版本 3.1.0.0）

## 技术架构

```
[手机B - CarWith] ← WiFi → [旧手机 APP] ← USB → [WinCE 车机]
```

**双角色设计**：
- **MdRole**（MD 角色）：启动 6 个 TcpServer 监听车机连接
- **HuRole**（HU 角色）：通过 Channel 抽象连接手机 B，完成协议握手
- **StreamBridge**：在两个角色之间转发音视频和控制数据

## CarLife 版本兼容性

| 手机 B 端 APP | 状态 | 说明 |
|------|------|------|
| **CarWith** | ✅ 推荐 | 无线 CarLife 投屏，本项目支持 |
| CarLife 6.7.2 及之前 | ✅ 可用 | 旧版有线 CarLife |
| CarLife 7.2 及之后 | ❌ 不兼容 | 连接黑屏 |

## 无线连接流程

```
[手机B - CarWith] ← WiFi 热点 → [旧手机 APP] ← USB → [WinCE 车机]
```

**连接步骤（WifiGuideActivity 引导）：**

| 步骤 | 操作 | 说明 |
|------|------|------|
| 1 | 手机 B 开启 WiFi 热点 | 旧手机连接到此热点 |
| 2 | 本机连接热点 | 自动检测网关 IP 作为手机 B 地址 |
| 3 | 手机 B 打开 CarWith | 选择「无线连接」，CarWith 开始监听 6 个端口 |
| 4 | 启动 CarLife 服务 | HuRole 连接手机 B 的 6 个端口，完成 CarLife 协议握手 |

**协议握手流程（CarLife 标准协议）：**

```
Bridge(HU)                    PhoneB CarWith(MD)
    |                              |
    |--- HU_PROTOCOL_VERSION ----→ |  Phase 1: 版本协商
    |←-- VERSION_MATCH_STATUS ---- |
    |--- HU_INFO ----------------→ |  Phase 2: 设备信息交换
    |←-- MD_INFO ----------------- |
    |--- HU_AUTHEN_REQUEST ------> |  Phase 3: 认证
    |←-- MD_AUTHEN_RESPONSE ------ |
    |--- HU_AUTHEN_RESULT -------> |  Phase 4: 认证结果
    |←-- MD_AUTHEN_RESULT -------- |
    |←-- MD_FEATURE_CONFIG_REQ --- |  Phase 5: 特性协商
    |--- HU_FEATURE_CONFIG_RESP → |
    |--- VIDEO_ENCODER_INIT -----> |  Phase 6: 视频编码器初始化
    |←-- VIDEO_ENCODER_INIT_DONE - |
    |--- VIDEO_ENCODER_START ----→ |  Phase 7: 开始投屏
    |                              |
    |====== 数据传输阶段 ==========|
```

## 开发进度

### ✅ 已完成

| 模块 | 说明 |
|------|------|
| **通道抽象层** | `Channel` 统一客户端/服务端通道，6 种 `ChannelType`，协议分帧（CMD 8 字节 / Media 11 字节包头），支持 CarLife CMD 格式读写 |
| **网络层** | `TcpServer`（多客户端管理、协程、支持 autoRead 控制）/ `TcpClient`（心跳、重连、协议分帧） |
| **HU 角色** | `HuRole` 连接手机 B，完整 CarLife 协议握手（版本→设备信息→认证→特性协商→编码器初始化），端口预检，支持数据转发方法 |
| **MD 角色** | `MdRole` 启动 6 端口监听，**完整 CarLife 协议握手**（8 阶段：版本匹配→设备信息→认证→特性协商→编码器初始化），所有通道 CarLife 协议格式专用读取循环 |
| **数据桥接** | `StreamBridge` 单通道桥接 + `StreamBridgeManager` 管理器，支持协议转换；ConnectionService 直接转发模式（HuRole↔MdRole 端到端） |
| **USB 连接** | `UsbTetheringManager` — USB 网络共享状态检测、车机 IP 自动扫描（192.168.42.x）、USB 状态广播、网口检测（usb0/rndis0/ncm） |
| **动态码率** | `DynamicBitrate` — 根据 WiFi RSSI 自动调节视频码率（5 级信号等级），信号下降立即响应，信号改善延迟升级（防抖动） |
| **连接引导** | `UsbGuideActivity` — 分 4 步引导 USB 连接（数据线→网络共享→等待车机→完成），步骤指示器 + 常见问题提示；`WifiGuideActivity` — 分 5 步引导无线连接（热点→连接→CarWith→服务→成功），实时 WiFi 状态检测 + CarWith 端口探测 |
| **协议转换** | `ProtocolTranslator`（H.265→H.264 / Opus→AAC 框架）、`VersionDetector` 版本检测 |
| **视频服务** | `VideoService` — MediaProjection 屏幕采集 + MediaCodec H.264 硬编码，SPS/PPS 缓存 |
| **音频服务** | `AudioService` — AudioPlaybackCapture 系统音频录制 + MediaCodec AAC 编码 |
| **触摸服务** | `TouchService` — 解析 CarLife 8 种触摸事件，横屏/竖屏坐标变换，手势模拟 |
| **无障碍服务** | `CarAccessibilityService` — 通过 dispatchGesture() 注入触摸，无需 root |
| **连接服务** | `ConnectionService` 前台服务，协调 MdRole/HuRole/Video/Audio/Touch 生命周期，**HuRole 自动重连（指数退避）** |
| **断线重连** | HuRole 断线后自动重连（5s→10s→20s→40s→80s 指数退避，最多 5 次）；MdRole 断线自动回到等待状态 |
| **网络诊断** | `NetworkDiagnostics` — WiFi 状态、热点检测、Ping、CarWith 端口监听检测，一键生成诊断报告 |
| **UI 界面** | `MainActivity` 状态监控 + MediaProjection 授权、`SettingsActivity` 参数配置、`LogViewerActivity` 日志查看、`NetworkDiagActivity` 网络诊断、`UsbGuideActivity` USB 连接引导、`WifiGuideActivity` 无线连接引导 |
| **竖屏支持** | 支持横屏/竖屏自适应显示，触摸坐标自动变换（参考 CarProjection 实现） |
| **Protobuf** | 28 个 `.proto` 文件，覆盖认证/注册/心跳/视频/音频/控制等全部 CarLife 消息 |
| **工具类** | 日志（文件保存 + 7 天轮转）、网络检测、设置管理、字节操作 |

### 🔲 待实现

| 模块 | 说明 | 优先级 |
|------|------|--------|
| _(无)_ | 所有 P0/P1/P2 功能已实现 | — |

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
├── ui/             # 用户界面（MainActivity, SettingsActivity, LogViewerActivity, NetworkDiagActivity, UsbGuideActivity, WifiGuideActivity）
├── receiver/       # 广播接收器（BootReceiver, WifiStateReceiver）
├── util/           # 工具类（Constants, LogUtils, NetworkUtils, NetworkDiagnostics, SettingsManager, ByteUtils）
└── proto/          # 28 个 Protobuf 定义文件
```

## 快速开始

### 无线连接模式（手机B → WiFi → 旧手机 → USB → 车机）

1. 克隆项目
   ```bash
   git clone https://github.com/pitate7777777/CarLifeWirelessBox.git
   ```

2. 用 Android Studio 打开项目，等待 Gradle 同步完成

3. 连接 Android 设备（Android 8.0+），运行 `app` 模块

4. **连接流程**：
   - 手机 B 打开 WiFi 热点
   - 旧手机连接手机 B 的热点
   - 手机 B 打开 CarWith → 点击「CarLife 连接」→ 选择「无线连接」
   - 旧手机 APP 点击「启动 CarLife 服务」

5. **新手？** 点击 APP 内「📶 无线 CarLife 连接引导」按钮，分步引导完成设置

6. **遇到问题？** 点击 APP 内「🔍 网络诊断」按钮，一键检测连接状态

### 设置说明

| 设置项 | 说明 | 默认值 |
|--------|------|--------|
| 手机 B 的 IP | 手机 B 热点的网关地址（支持自动检测） | 自动获取 |
| 视频分辨率 | 投屏分辨率 | 1280x720 |
| 视频码率 | 编码码率 (kbps) | 2000 |
| 视频帧率 | 编码帧率 | 30 |
| 音频采样率 | 音频采样率 | 44100 |

## 文档

完整文档目录见 [`docs/README.md`](docs/README.md)。

| 文档 | 说明 |
|------|------|
| `docs/ARCHITECTURE.md` | 系统架构文档（模块关系、数据流、接口定义） |
| `docs/PRD.md` | 产品需求文档（用户故事、需求池、状态机） |
| `docs/项目技术文档.md` | CarLife 协议技术调研（协议解析、开源项目分析） |
| `docs/参考app分析.md` | 百度 CarLife 参考 APP 分析（反编译报告） |
| `docs/CarProjection对比分析.md` | 与参考项目 CarProjection 的对比分析 |
| `docs/PROTOCOL_GATEWAY_DESIGN.md` | 协议网关设计方案（长远备用计划：支持手机B使用新版 CarLife） |
| `docs/CODE_REVIEW.md` | 源码审查报告（多轮审查记录、已修复问题清单） |
| `docs/UI_REVIEW.md` | UI 审查报告（界面问题、修复建议） |

## 参考项目

| 项目 | 地址 | 说明 |
|------|------|------|
| CarLifeVehicleLib | https://github.com/ApolloAuto/apollo-DuerOS | 协议规范 |
| CarProjection | https://github.com/aa112901/CarProjection | 手机端有线投屏实现（参考） |
| WirelessAndroidAutoDongle | https://github.com/nisargjhaveri/WirelessAndroidAutoDongle | 桥接架构 |

## 许可证

MIT License

## 更新日志

### 2026-05-14 — 修复无线连接卡在第 4 步：MdRole/HuRole 双重连接冲突

**问题**: 无线连接卡在第 4 步（启动 CarLife 服务后握手超时）。

**根因分析（Phone B logcat）**:
- `ConnectionService.onStartCommand()` 同时启动 MdRole 和 HuRole
- **两者都连接 Phone B 的同一组 HU 端口**（7240/8240/9240/9241/9242/9340）
- CarWith 期望只有 1 个 HU 客户端，实际收到 2 个 → 协议状态机混乱
- MdRole 和 HuRole 各自发 `HU_PROTOCOL_VERSION`，Phone B 收到重复握手消息
- Phone B 的 CarWith（`com.miui.carlink` + `com.baidu.carlife.xiaomi`）只创建 Bluetooth RFCOMM socket，未创建 TCP socket → 无线模式需要单独触发

**修复**:
- `ConnectionService.onStartCommand()`: 移除 MdRole 自动启动，只启动 HuRole 连接手机 B
- `ConnectionService.tryStartVideoAndAudioServices()`: 只检查 HuRole 连接状态（移除 mdReady 依赖）
- `ConnectionService.getConnectedChannelCount()`: 改用 HuRole 连接状态判断
- mDNS 服务仍然启动，供手机 B 发现本设备
- MdRole 保留用于车机侧（USB 网络共享），不再自动连接 Phone B

**涉及文件**:
- `ConnectionService.kt` — 启动逻辑、就绪判断、通道计数

### 2026-05-13 — 无线连接 Phase 1 超时修复 + 统一界面风格 + 日志开关

**Critical Fix — 无线连接卡在「等待版本匹配」根因**:
- `Channel.kt` 的 `readCarLifeMsg()` 标记 `@Synchronized`，与 `sendCarLifeMsg()` 的 `synchronized(this)` 锁竞争
- CMD 读取协程持锁阻塞 5 秒（socket timeout），发送协程无法获取锁发送 `HU_PROTOCOL_VERSION`
- 修复：移除读方法的 `@Synchronized`，写操作改用独立 `writeLock` 对象，读写不再互斥
- 涉及文件：`Channel.kt`

**统一界面风格**:
- 所有 Activity 统一使用 MaterialToolbar，顶部导航栏风格一致
- MainActivity 新增顶部工具栏（原来没有）
- SettingsActivity 新增顶部工具栏 + 返回按钮（原来没有）
- NetworkDiagActivity、UsbGuideActivity、WifiGuideActivity 改用 MaterialToolbar 替代默认 ActionBar
- 颜色统一管理：新增 `colors.xml` 语义颜色（`color_car`/`color_phone`/`color_box`/`color_channel` 等）
- Settings 卡片边框/背景色改用颜色资源引用，消除布局中硬编码颜色
- 预览遮罩色、日志终端色、提示卡片背景色等均提取为颜色资源

**日志增加开关**:
- `LogUtils` 新增控制台日志主开关（`setConsoleLogEnabled`），关闭后不再输出 Logcat 日志
- `SettingsManager` 新增 `isConsoleLogEnabled`/`isFileLogEnabled` 持久化配置
- SettingsActivity 新增「日志设置」卡片，包含「控制台日志」和「文件日志」两个独立开关
- `CarLifeApplication` 启动时自动恢复上次的日志开关配置
- 控制台日志和文件日志可独立控制：开发时全开，生产环境可关闭控制台日志

**涉及文件**:
- `colors.xml` — 新增 18 个语义颜色资源
- `styles.xml` — 新增工具栏样式
- `strings.xml` — 新增日志设置相关字符串
- `activity_main.xml` — 新增 MaterialToolbar，硬编码颜色改用资源引用
- `activity_settings.xml` — 新增工具栏 + 日志设置卡片
- `activity_log_viewer.xml` — 日志终端色改用资源引用
- `activity_network_diag.xml` — 新增 MaterialToolbar
- `activity_usb_guide.xml` — 新增 MaterialToolbar
- `activity_wifi_guide.xml` — 新增 MaterialToolbar
- `LogUtils.kt` — 新增 `consoleLogEnabled` 主开关
- `SettingsManager.kt` — 新增日志开关读写方法
- `CarLifeApplication.kt` — 启动时恢复日志开关配置
- `MainActivity.kt` — 初始化 Toolbar
- `SettingsActivity.kt` — 初始化 Toolbar + 日志开关 UI
- `NetworkDiagActivity.kt` — 改用 MaterialToolbar
- `UsbGuideActivity.kt` — 改用 MaterialToolbar
- `WifiGuideActivity.kt` — 改用 MaterialToolbar

### 2026-05-13 — 端口泄漏修复 (EADDRINUSE) + ConnectionService 竞态修复

**问题**: 无线连接卡在第 4 步，TcpServer 端口泄漏导致 HuRole 反连失败。

**根因** (3 层):
1. **ConnectionService 竞态** (主因): `HuRole.connect()` 内部 cleanup 触发 `DISCONNECTED` 回调 →
   `ConnectionService` 立刻 `stopHuRole()` + `huRole = null` → 协程还在运行的 TcpServer 变孤儿 → 端口永不释放
2. **TcpServer.stop()** 有 early return，`isRunning=false` 时跳过 `serverSocket.close()`
3. **ServerSocket** 未设 `SO_REUSEADDR`

**修复**:
- `ConnectionService.onHuRoleStateChanged(DISCONNECTED)`: 不再调 disconnect/null，只调度重连
- `ConnectionService.startHuRole()`: 重连时先 `release()` 旧实例再创建新的
- `TcpServer.stop()`: 移除 early return，始终关闭 ServerSocket (幂等)
- `ServerSocket`: 使用 `reuseAddress = true` + `InetSocketAddress` 模式
- Channel/MdRole: 资源清理顺序统一为 关闭socket → cancel scope
- 涉及文件：`ConnectionService.kt`、`TcpServer.kt`、`Channel.kt`、`MdRole.kt`、`HuRole.kt`
