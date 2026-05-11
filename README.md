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

## 项目结构

```
app/src/main/java/com/carlife/wireless/
├── channel/        # 通道抽象（ChannelType, Channel）
├── model/          # 协议包头（ChannelHeader）
├── network/        # TCP 客户端/服务端
├── role/           # HuRole（手机侧）、MdRole（车机侧）
├── bridge/         # 数据流桥接
├── protocol/       # 协议转换、版本检测
├── service/        # Android 服务
├── ui/             # 用户界面
├── receiver/       # 广播接收器
└── util/           # 工具类
```

## 构建要求

- Android Studio Hedgehog 或更高版本
- JDK 17
- Android SDK 34
- Gradle 8.5

## 文档

- `docs/ARCHITECTURE.md` — 系统架构文档
- `docs/PRD.md` — 产品需求文档
- `docs/项目技术文档.md` — CarLife 协议技术调研
- `docs/参考app分析.md` — 百度 CarLife 参考 APP 分析

## 参考项目

| 项目 | 地址 | 说明 |
|------|------|------|
| CarLifeVehicleLib | https://github.com/ApolloAuto/apollo-DuerOS | 协议规范 |
| CarProjection | https://github.com/aa112901/CarProjection | 手机端实现 |
| WirelessAndroidAutoDongle | https://github.com/nisargjhaveri/WirelessAndroidAutoDongle | 桥接架构 |

## 许可证

MIT License
