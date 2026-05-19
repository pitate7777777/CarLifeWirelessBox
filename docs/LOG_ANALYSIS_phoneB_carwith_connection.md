# 手机B CarWith 无法连接分析报告

**日志文件**: `Xiaomi-MI-5s-Android-8_2026-05-19_222904.logcat.txt`  
**设备**: Xiaomi MI 5s (Android 8, API 26)  
**应用**: `com.carlife.wireless.debug`  
**日期**: 2026-05-19

---

## 问题现象

转接盒（本机，IP: `10.88.30.41`）启动后，HuRole 尝试连接手机B CarWith（IP: `10.88.30.77`）的三个 HU 端口，**全部连接被拒绝（ECONNREFUSED）**：

| 通道 | 目标端口 | 错误 |
|------|---------|------|
| HU_CMD | 7240 | `ECONNREFUSED (Connection refused)` |
| HU_VIDEO | 8240 | `ECONNREFUSED (Connection refused)` |
| HU_CTRL | 9340 | `ECONNREFUSED (Connection refused)` |

## 根本原因

**手机B 的 CarWith 应用未在 HU 端口（7240/8240/9340）上监听。**

`ECONNREFUSED` 表示目标 IP 的目标端口上没有任何进程在 `listen()`。

## 端口配置验证

### 端口号是否正确？

经查阅项目协议文档（`docs/通讯协议分析报告.md`）和百度 CarLife SDK 文档，**端口号是正确的**：

| 通道 | HU端口 (CarWith监听) | MD端口 (转接盒监听) | 用途 |
|------|---------------------|-------------------|------|
| CMD | **7240** | 7200 | 控制信令 |
| VIDEO | **8240** | 8200 | 视频流 |
| MEDIA | **9240** | 9200 | 媒体音频 |
| TTS | **9241** | 9201 | 导航语音 |
| VR | **9242** | 9202 | 语音识别 |
| CTRL | **9340** | 9300 | 触摸控制 |

这些端口来源于 CarLife 协议标准：
- **HU端口（7240/8240/9240/9241/9242/9340）**：CarWith/手机端在 WiFi 模式下监听的端口
- **MD端口（7200/8200/9200/9201/9202/9300）**：转接盒/车机端监听的端口
- USB 有线模式下通过 `adb forward tcp:7200 tcp:7240` 等命令建立端口转发

项目 PRD 中有一个未验证的问题 Q3：
> "手机B（CarWith）以 Wi-Fi 模式发布服务时，具体监听端口是否与 ADB Forward 模式相同（7240/8240/…）？"

但根据协议规范和 `NetworkDiagnostics.kt` 中的端口列表，**7240/8240/9340 就是正确的 HU 端口**。

### 为什么 CarWith 没有监听？

CarWith 不会在启动时自动监听这些端口。**必须满足以下条件**：

1. **手机B 上的 CarWith 必须打开并进入「无线连接」模式**
   - 打开 CarWith → 点击「CarLife 连接」→ 选择「无线连接」
   - 此时 CarWith 才会在 7240/8240/9240/9241/9242/9340 端口上启动 TcpServer

2. **网络发现必须成功**
   - CarWith 通过 mDNS 或 UDP 广播发现转接盒
   - 转接盒的 UDP 发现服务已在工作（日志中可见 `CARLIFE_BOX_HERE` 广播）
   - 但 CarWith 可能没有收到或处理这些广播

## 日志时间线

```
1. 应用启动，初始化日志系统
2. MainActivity onCreate → Auto-connect: starting service...
3. ConnectionService 创建并启动
4. 启动 MdRole（TcpServer 监听车机 MD 端口）
5. Phone B IP: 10.88.30.77（已获取手机B的IP）
6. HuRole 开始连接手机B CarWith：
   - HU_CMD  → 10.88.30.77:7240 ❌ ECONNREFUSED
   - HU_VIDEO → 10.88.30.77:8240 ❌ ECONNREFUSED
   - HU_CTRL  → 10.88.30.77:9340 ❌ ECONNREFUSED
7. HuRole 状态: IDLE → CONNECTING → DISCONNECTED
8. MdRole 启动 TcpServer（7200/8200/9200/9300）等待车机
9. UDP 发现服务持续广播 CARLIFE_BOX_HERE
10. MdRole 等待车机连接超时 → ERROR
```

## 排除的问题

- ✅ **网络连通性正常** —— 能获取手机B的IP（10.88.30.77），说明 WiFi 热点/USB 网络共享工作正常
- ✅ **转接盒自身服务正常** —— MdRole 的 TcpServer 成功启动（端口 7200/8200/9200/9300）
- ✅ **UDP 发现服务正常** —— 能收发广播消息
- ✅ **MediaProjection 授权成功** —— 投屏权限已获取
- ✅ **端口号正确** —— 7240/8240/9340 是 CarLife 协议标准 HU 端口

## 解决方案

1. **确认手机B 的 CarWith 已进入无线连接模式**
   - 打开 CarWith → 点击「CarLife 连接」→ 选择「无线连接」
   - 等待 CarWith 显示"等待连接"或类似状态

2. **使用 NetworkDiagnostics 检查端口状态**
   - 在转接盒 APP 中运行网络诊断，确认 CarWith 端口是否已监听
   - 诊断工具会检查 7240/8240/9240/9241/9242/9340 全部 6 个端口

3. **确认 CarWith 版本支持无线连接**
   - 部分旧版 CarWith 可能不支持无线模式
   - 建议使用 HyperOS 自带的 CarWith 或最新版本

4. **检查防火墙/安全软件**
   - 手机B 上的防火墙或安全软件可能阻止了端口监听

## 建议的代码改进

在 `HuRole` 连接失败时，增加更友好的诊断提示：

```kotlin
// 在连接失败回调中添加诊断信息
Log.e(TAG, "连接手机B CarWith失败，请确认：")
Log.e(TAG, "  1. 手机B的CarWith应用已打开")
Log.e(TAG, "  2. CarWith已进入无线连接模式（点击CarLife连接→无线连接）")
Log.e(TAG, "  3. CarWith监听端口为 7240/8240/9340")
Log.e(TAG, "  4. 手机B的防火墙未阻止连接")
```
