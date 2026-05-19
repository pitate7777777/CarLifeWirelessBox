# MdRole / HuRole 角色定义与演进分析

> 日期：2026-05-19
> 基于 git 提交历史还原

---

## 结论（先说答案）

**MdRole 的当前状态：已废弃的残留代码，不应使用。**

实际运行架构：
```
手机B (CarWith, HU Server)  ←WiFi TCP→  HuRole (HU Client)  ←USB Tethering→  车机
     监听 HU 端口                          连接手机B                           通过 USB 网络
   7240/8240/9240/...                    7200/8200/9200/...                   直接获得 IP
```

- **HuRole** = 实际工作的唯一角色，连接手机 B 完成 CarLife 握手 + 接收音视频流
- **MdRole** = 历史残留，代码仍存在但 ConnectionService 不启动它
- **车机连接** = 通过 USB Tethering TCP（车机获得 IP 后直连），不需要 MdRole 监听

---

## 演进时间线

### Phase 1: 初始设计（c2c0f5f ~ 92bea07）

**设计意图**：
```
手机B (MD) → MdRole (HU Server, 监听 7200/8200/...) → 车机
手机B 的 CarWith 主动连接转接盒的 MD 端口
```

- MdRole = TcpServer，监听 MD 端口等待手机 B 连接
- HuRole = TcpServer，监听 HU 端口等待车机连接

**问题**：Android WiFi 热点安全机制阻止入站 TCP 连接。手机 B 无法主动连接到转接盒。

---

### Phase 2: 反转连接方向（74e81a0）

**提交信息**：
> fix: 反转连接方向 — 解决 Android 热点阻止入站 TCP 问题
>
> 根本原因：Android WiFi 热点安全机制阻止客户端→热点主人的入站 TCP 连接。
> 盒子（HU）无法主动连接手机B（MD）的 TcpServer。

**改动**：HuRole 从 TcpClient 改为 TcpServer（在 HU 端口上等待手机 B 连接）

**新问题**：CarWith 是客户端角色，它主动连接 HU 端口。HuRole 变成 Server 后，CarWith 不知道去哪里连接。

---

### Phase 3: 再次反转（55743c7）

**提交信息**：
> fix: HuRole从TcpServer改回TcpClient模式
>
> CarWith是客户端，它主动连接HU。HuRole应该连接手机B的CarWith端口。

**改动**：HuRole 改回 TcpClient，但使用了错误的 MD 端口（7200/8200/...）

---

### Phase 4: 修正端口（760f603）

**提交信息**：
> fix: HuRole连接CarWith使用HU端口(7240/8240/9240/9340)
>
> PRD确认: CarWith作为MD角色在HU端口上监听,盒子作为HU角色连接这些端口。

**改动**：HuRole 改用正确的 HU 端口（7240/8240/...）

---

### Phase 5: MdRole 也改为连接手机 B（00feb0b）

**提交信息**：
> refactor: MdRole 从监听模式改为主动连接模式
>
> 手机 B 的 CarWith 作为服务端监听 HU 端口（7240/8240/9240/9241/9242/9340），
> 转接盒的 MdRole 应作为客户端主动连接这些端口。
>
> 之前的错误实现：MdRole 在 MD 端口（7200/8200/9200...）上监听，等待手机 B
> 连接过来。但手机 B 的 CarWith 不会主动连接转接盒——它是服务端，等待被连接。

**问题**：MdRole 和 HuRole 现在都连接手机 B 的同一组 HU 端口！

---

### Phase 6: 修复双重连接冲突（1ca7069）← 当前状态

**提交信息**：
> fix: 修复无线连接卡在第4步 - MdRole/HuRole双重连接冲突
>
> 根因: ConnectionService.onStartCommand() 同时启动 MdRole 和 HuRole，
> 两者都连接 Phone B 的同一组 HU 端口 (7240/8240/9240...)，
> CarWith 收到双重 HU 连接导致协议状态机混乱。
>
> 修复:
> - 移除 MdRole 自动启动（只保留 HuRole 连接手机B）
> - MdRole 保留用于车机侧(USB)，不再自动连接 Phone B

**最终状态**：
- `ConnectionService.onStartCommand()` 只调用 `startHuRole()`，不调用 `startMdRole()`
- MdRole 代码保留但不使用
- 车机连接通过 USB Tethering（车机获得 IP 后直连转接盒）

---

## 当前架构图

```
┌─────────────────┐         ┌──────────────────────────┐         ┌─────────────┐
│  手机 B          │  WiFi   │  转接盒 (旧手机)          │  USB    │  车机        │
│  CarWith         │◄───────►│                          │◄───────►│  WinCE       │
│  (HU Server)     │  TCP    │  HuRole (HU Client)      │ Tether  │  CarLife     │
│  监听 7240/8240  │  6通道  │  连接手机B               │  TCP    │  连接转接盒   │
└─────────────────┘         │                          │         └─────────────┘
                            │  MdRole (未使用)          │
                            │  ConnectionService        │
                            │  VideoService             │
                            │  AudioService             │
                            │  TouchService             │
                            └──────────────────────────┘
```

**数据流**：
```
手机B → HuRole(接收) → ConnectionService(转发) → MdRole.sendData() → 车机
车机 → MdRole(接收) → ConnectionService(转发) → HuRole.sendControlMsg() → 手机B
```

> 注意：MdRole 虽然不启动自己的连接，但 ConnectionService 仍调用 `mdRole?.sendData()` 向车机发送数据。这依赖车机通过 USB Tethering 获得 IP 后主动连接转接盒的 MD 端口。但 MD 端口当前没有 TcpServer 监听——这是一个架构缺陷。

---

## 文档与代码的不一致

| 项目 | 文档描述 | 代码实际 | 建议 |
|------|---------|---------|------|
| MdRole 职责 | "MD 服务端，被车机连接" | 代码连接手机 B，未监听车机 | 更新文档或重构 MdRole |
| MdRole 启动 | 应该监听 MD 端口 | ConnectionService 不调用 startMdRole() | 明确废弃或重新实现 |
| 车机连接 | 通过 MdRole 监听 | 通过 USB Tethering（无监听端口） | 需要实现 MD 端口 TcpServer |
| HuRole 职责 | 正确 | 正确（连接手机 B） | 无问题 |
| 数据转发 | MdRole.sendData() 转发到车机 | 无 MD 端口监听，sendData 会失败 | 需要实现或移除 |

---

## 建议方案

### 方案 A: MdRole 改回 TcpServer（监听车机）— 推荐

1. MdRole 改回监听 MD 端口（7200/8200/...）的 TcpServer
2. ConnectionService 中 MdRole 和 HuRole 独立启动
3. MdRole 不连接手机 B，只监听车机
4. 车机通过 USB Tethering 获得 IP 后连接转接盒的 MD 端口

```
手机B ←HuRole→ 转接盒 ←MdRole(TcpServer)→ 车机
```

### 方案 B: 清理 MdRole，用 HuRole 直接转发

1. 移除 MdRole 代码
2. ConnectionService 直接通过 USB Tethering socket 转发数据
3. 简化架构但失去 CarLife 协议层抽象

### 方案 C: 保持现状，更新文档

1. 标记 MdRole 为废弃
2. 文档说明车机连接通过 USB Tethering 直接 IP 连接
3. 不实现 MD 端口监听（车机需要配置直连转接盒 IP）
