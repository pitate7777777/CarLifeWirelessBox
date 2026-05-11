# CarProjection 对比分析

## 项目对比

| 维度 | CarProjection (参考) | CarLifeWirelessBox (本项目) | 完成度 |
|------|---------------------|---------------------------|--------|
| **连接方式** | USB Accessory (有线) | WiFi TCP (无线) + USB (待实现) | ⚠️ USB 未实现 |
| **设备角色** | 仅 MD (手机侧) | 双角色: MdRole (车机侧) + HuRole (手机B侧) | ✅ 已实现 |
| **协议包头** | 8B CMD + 12B Media | 8B CMD + 11B Media | ✅ 已实现 |
| **视频采集** | MediaCodec 屏幕采集 | MediaProjection + MediaCodec H.264 | ✅ 已实现 |
| **音频采集** | AudioPlaybackCapture | AudioPlaybackCapture + AAC 编码 | ✅ 已实现 |
| **触摸注入** | AccessibilityService | AccessibilityService | ✅ 已实现 |
| **屏幕方向** | 横屏 + 竖屏坐标变换 | 横屏 + 竖屏坐标变换 | ✅ 已实现 |
| **协议握手** | 完整 CarLife 协议 (MD侧) | HuRole 完整 / MdRole 简化版 | ⚠️ MdRole 待完善 |
| **数据桥接** | 无需桥接 (单设备) | StreamBridge 架构就绪 | ⚠️ 未集成到 Service |
| **断线重连** | 无 | 无 | ❌ 待实现 |

## CarProjection 协议流程分析

### USB 有线连接流程

```
车机 (HU)                          手机 (MD)
    |                                  |
    |--- HU_PROTOCOL_VERSION --------->|  (1)
    |<-- VERSION_MATCH_STATUS ----------|  (2)
    |--- HU_INFO ---------------------->|  (3)
    |<-- MD_INFO -----------------------|  (4)
    |--- VIDEO_ENCODER_INIT ----------->|  (5)
    |<-- VIDEO_ENCODER_INIT_DONE -------|  (6)
    |--- VIDEO_ENCODER_START ---------->|  (7)
    |<-- STATISTIC_INFO + AUTHEN_RESULT |  (8)
    |                                  |
    |=== 视频/音频流开始传输 ===========|
```

### CarProjection 实现要点

1. **USB Accessory 通道**: 使用 `UsbManager.openAccessory()` 获取 `FileInputStream`/`FileOutputStream`
2. **8 字节包头**: `[channel_type(1B)][reserved(3B)][msg_len(4B)]`
3. **消息封装**: CMD 消息用 `exportCMDMsg()` (8B header + protobuf)，Video/Media 用 `exportVideoMsg()` (12B header + data)
4. **触摸处理**: 区分横屏/竖屏，竖屏时计算画面偏移量 `leftX`，使用不同的缩放因子
5. **音频**: 使用 `AudioPlaybackCapture` (Android 10+) 或 `REMOTE_SUBMIX` (旧版本)

## 本项目待完成项

### P0: USB 有线连接支持

CarProjection 的核心功能是通过 USB Accessory 连接车机。本项目需要实现类似的 USB 连接通道，使得旧手机可以通过 USB 数据线直接连接 WinCE 车机。

**需要实现:**
- `UsbAccessoryChannel` — 封装 USB Accessory 读写
- USB 设备权限管理
- USB 插拔事件处理
- 与现有 Channel 抽象层集成

### P0: MdRole 协议握手完善

当前 MdRole 使用简化的握手（发送 "HELLO_CAR_DEVICE" 字符串），需要改为标准 CarLife 协议：

```
车机 → MdRole: HU_PROTOCOL_VERSION (0x00018001)
MdRole → 车机: VERSION_MATCH_STATUS (0x00010002)
车机 → MdRole: HU_INFO (0x00018003)
MdRole → 车机: MD_INFO (0x00010004)
车机 → MdRole: VIDEO_ENCODER_INIT (0x00018007)
MdRole → 车机: VIDEO_ENCODER_INIT_DONE (0x00010008)
车机 → MdRole: VIDEO_ENCODER_START (0x00018009)
MdRole → 车机: STATISTIC_INFO 响应 + AUTHEN_RESULT
```

### P0: StreamBridge 集成

将 StreamBridge 接入 ConnectionService，实现 HuRole ↔ MdRole 端到端数据转发。

### P1: 断线重连

WiFi 和 USB 双端自动重连机制。

## 竖屏支持 (已完成)

参考 CarProjection 的 `genarateGesture()` 方法，本项目已实现竖屏坐标变换：

- **横屏 (ROTATION_90/270)**: 直接用 `mobileWidth/carWidth` 和 `mobileHeight/carHeight` 缩放
- **竖屏 (ROTATION_0/180)**: 
  - 计算车机画面在竖屏手机上的实际宽度: `carWidth * carHeight / mobileWidth`
  - 计算左侧偏移: `(carWidth - portraitCarWidth) / 2`
  - X 坐标减去偏移后缩放: `(carX - leftX) * factorW`
  - Y 坐标直接缩放: `carY * factorH`
