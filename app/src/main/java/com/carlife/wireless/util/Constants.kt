package com.carlife.wireless.util

/**
 * CarLife Wireless 协议常量定义
 */
object Constants {

    // 协议版本
    const val PROTOCOL_MAJOR_VERSION = 1
    const val PROTOCOL_MINOR_VERSION = 0

    // 端口定义 - HU侧（车机/盒子）
    object Port {
        const val HU_CMD = 7240
        const val HU_VIDEO = 8240
        const val HU_MEDIA = 9240
        const val HU_TTS = 9241
        const val HU_VR = 9242
        const val HU_CTRL = 9340
    }

    // 端口定义 - MD侧（手机/车机）
    object PortMD {
        const val MD_CMD = 7200
        const val MD_VIDEO = 8200
        const val MD_MEDIA = 9200
        const val MD_TTS = 9201
        const val MD_VR = 9202
        const val MD_CTRL = 9300
    }

    // IP地址定义
    object IpAddress {
        const val USB_TETHERING_LOCAL = "192.168.42.129"
        /** Android WiFi 热点默认网关 */
        const val HOTSPOT_GATEWAY = "192.168.43.1"
    }

    // 视频参数
    object Video {
        const val DEFAULT_WIDTH = 800
        const val DEFAULT_HEIGHT = 480
        const val DEFAULT_FPS = 30
    }

    // 音频参数
    object Audio {
        const val SAMPLE_RATE = 48000
        const val BIT_DEPTH = 16
        const val CHANNELS = 2
    }

    // 心跳参数
    object Heartbeat {
        const val INTERVAL_MS = 3000L
        const val TIMEOUT_MS = 9000L
    }

    // 重连参数
    object Reconnect {
        const val MAX_RETRY = 5
        const val DELAY_MS = 2000L
    }

    // 包头大小
    object HeaderSize {
        const val CMD_CHANNEL = 8
        const val MEDIA_CHANNEL = 11
    }

    // Channel types for protocol
    object Protocol {
        const val CHANNEL_CMD = 1
        const val CHANNEL_VIDEO = 2
        const val CHANNEL_AUDIO = 3
        const val CHANNEL_TTS = 4
        const val CHANNEL_VR = 5
        const val CHANNEL_CTRL = 6
        const val CHANNEL_MAX = 7
    }

    // 协议魔数
    const val PROTOCOL_MAGIC: Short = 0x434C

    // 连接超时（毫秒）
    const val CONNECTION_TIMEOUT_MS = 5000

    // 缓冲区大小
    object Buffer {
        const val READ_BUFFER_SIZE = 8192
        const val VIDEO_FRAME_MAX_SIZE = 200_000
    }
}
