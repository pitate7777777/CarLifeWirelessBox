package com.carlife.wireless.model

/**
 * 连接状态枚举
 * 定义 Channel 的完整生命周期状态
 */
enum class KConnectionState {
    /**
     * 初始状态，通道已创建但未发起连接
     */
    IDLE,

    /**
     * 正在连接中（TCP 握手、认证等）
     */
    CONNECTING,

    /**
     * 已连接，可以正常收发数据
     */
    CONNECTED,

    /**
     * 已断开连接（主动断开或异常断开）
     */
    DISCONNECTED
}
