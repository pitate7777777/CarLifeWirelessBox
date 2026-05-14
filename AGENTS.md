# AGENTS.md — AI 开发上下文

> **AI 助手必读**：在为本项目生成代码前，先读 `docs/DEVELOPMENT.md`。

## 项目信息

- **语言**: Kotlin (Android)
- **最低 SDK**: 26 (Android 8.0)
- **目标 SDK**: 34
- **构建**: Gradle KTS + AGP 8.2.2
- **协议**: CarLife (自定义 TCP，Protobuf 序列化)

## AI 开发检查清单

生成代码后，自查以下项目：

### 必查项
- [ ] `Build.SERIAL` 是否有兜底？（API 29+ 返回 null）
- [ ] Socket/流是否在 `use{}` 或 `finally` 中关闭？
- [ ] 编解码器类型是否与实际数据匹配？（未转码时保留原始类型）
- [ ] 协议字节序是否为 Big-Endian？
- [ ] 写操作是否使用独立锁（`writeLock`），而非 `synchronized(this)`？
- [ ] 状态变更是否通过 `updateState()` 触发回调？

### 推荐项
- [ ] 新增工具类是否有单元测试？
- [ ] 日志是否使用 `LogUtils` 而非 `println`？
- [ ] 异常是否记录了上下文信息？
- [ ] 魔数是否有命名常量？

## 测试

```bash
# 运行单元测试
./gradlew testDebugUnitTest

# 运行代码检查
bash scripts/check.sh
```

## 关键文件

| 文件 | 用途 |
|------|------|
| `docs/DEVELOPMENT.md` | 完整开发指南 |
| `scripts/check.sh` | 代码质量检查 |
| `config/detekt/detekt.yml` | 静态分析配置 |
| `.editorconfig` | 代码风格 |

## 常见陷阱

1. **双重连接**: MdRole 和 HuRole 不能同时连接手机 B 的同一组端口
2. **编解码器类型**: `ProtocolTranslator` 直通时必须返回原始 codec 类型
3. **协程 scope**: `disconnect()` 会 cancel scope，`connect()` 前需 `ensureScopeActive()`
4. **MediaProjection**: 生命周期由 ConnectionService 管理，子服务不要 stop 它
