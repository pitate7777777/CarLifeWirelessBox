# CarLifeWirelessBox

将旧Android手机改造为无线CarLife转接盒 - 技术文档与实现方案

## 项目简介

将旧Android手机改造为无线CarLife转接盒，实现：
- 接收手机B（发射端）的无线CarLife连接
- 通过USB数据线将投屏内容转发到WinCE车机
- 兼容百度CarLife WinCE版（最后一个支持版本 3.1.0.0）

## 关键发现

**CarLife版本兼容性**：
- ✅ CarLife 6.7.2及之前版本 → 可以成功连接WinCE车机
- ❌ CarLife 7.2及之后版本 → 连接黑屏，不兼容

**必须使用CarLife 6.7.2版本！**

## 技术架构

```
[手机B - CarLife 6.7.2] ← WiFi → [旧手机APP] ← USB → [WinCE车机]
```

## 文档目录

- `docs/项目技术文档.md` - 完整技术文档 (1358行)
  - CarLife协议深度解析
  - 开源项目源码分析
  - 版本兼容性设计（6.7.2强制要求）
  - 技术路线设计
  - 核心模块实现方案

## 参考项目

| 项目 | 地址 | 说明 |
|------|------|---------|
| CarLifeVehicleLib | https://github.com/ApolloAuto/apollo-DuerOS | 协议规范 |
| CarProjection | https://github.com/aa112901/CarProjection | 手机端实现 |
| WirelessAndroidAutoDongle | https://github.com/nisargjhaveri/WirelessAndroidAutoDongle | 桥接架构 |

## 许可证

MIT License

## 作者

WorkBuddy AI - Software Architect Agent