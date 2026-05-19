package com.carlife.wireless.model

import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * 内部通道框架包头定义（Channel.read() / writeFrame() 使用）
 *
 * ⚠️ 注意：此格式 **不用于** CarLife 协议通信！
 * CarLife 协议使用另一种格式（见 Channel.readCarLifeMsg() / sendCarLifeMsg()）。
 * 两者区别如下：
 *
 * | 格式           | CMD 头大小 | Media 头大小 | Magic | 用途             |
 * |----------------|-----------|-------------|-------|------------------|
 * | ChannelHeader  | 8 字节    | 11 字节     | 0x434C| 内部 Channel 框架 |
 * | CarLife 协议   | 8 字节    | 12 字节     | 无    | 实际 CarLife 通信 |
 *
 * 本项目所有实际 CarLife 通信均使用 Channel 类中的 CarLife 格式方法：
 * - sendCarLifeMsg() / readCarLifeMsg()       — CMD 通道（8字节，无 magic）
 * - sendCarLifeMediaMsg() / readCarLifeMediaMsg() — 媒体通道（12字节，无 magic）
 *
 * 本类仅供 Channel.read() / writeFrame() 及 TcpClient 等旧代码使用。
 *
 * ===== 本类包头格式 =====
 *
 * CMD 通道包头（8字节）：
 * - magic (2字节): 固定 0x434C ("CL")
 * - payloadType (1字节): 消息类型
 * - payloadLength (4字节): 载荷长度
 * - crc (1字节): 校验和
 *
 * 媒体通道包头（11字节）：
 * - magic (2字节): 固定 0x434C ("CL")
 * - payloadType (1字节): 媒体类型
 * - timestamp (4字节): 时间戳（毫秒）
 * - payloadLength (4字节): 载荷长度
 *
 * 使用 Big-Endian 字节序
 */
sealed class ChannelHeader {

    companion object {
        const val MAGIC: Short = 0x434C.toShort()
        const val CMD_HEADER_SIZE = 8
        const val MEDIA_HEADER_SIZE = 11
    }

    /** 序列化为字节数组 */
    abstract fun toBytes(): ByteArray

    /**
     * CMD 通道包头（8字节）
     */
    data class Cmd(
        val payloadType: Int,
        val payloadLength: Int,
        val crc: Byte = 0
    ) : ChannelHeader() {

        companion object {
            const val OFFSET_MAGIC = 0
            const val OFFSET_PAYLOAD_TYPE = 2
            const val OFFSET_PAYLOAD_LENGTH = 3
            const val OFFSET_CRC = 7

            fun fromBytes(bytes: ByteArray): Cmd {
                require(bytes.size >= CMD_HEADER_SIZE) {
                    "CMD header requires at least $CMD_HEADER_SIZE bytes, got ${bytes.size}"
                }
                val payloadType = bytes[OFFSET_PAYLOAD_TYPE].toInt() and 0xFF
                val payloadLength = bytesToIntBE(bytes, OFFSET_PAYLOAD_LENGTH)
                val crc = bytes[OFFSET_CRC]
                return Cmd(payloadType, payloadLength, crc)
            }

            fun calcCrc(payload: ByteArray): Byte {
                var sum = 0
                for (b in payload) {
                    sum += b.toInt() and 0xFF
                }
                return (sum and 0xFF).toByte()
            }

            private fun bytesToIntBE(bytes: ByteArray, offset: Int): Int {
                return ((bytes[offset].toInt() and 0xFF) shl 24) or
                       ((bytes[offset + 1].toInt() and 0xFF) shl 16) or
                       ((bytes[offset + 2].toInt() and 0xFF) shl 8) or
                       (bytes[offset + 3].toInt() and 0xFF)
            }
        }

        override fun toBytes(): ByteArray {
            val buffer = ByteBuffer.allocate(CMD_HEADER_SIZE).order(ByteOrder.BIG_ENDIAN)
            buffer.putShort(MAGIC)
            buffer.put(payloadType.toByte())
            buffer.putInt(payloadLength)
            buffer.put(crc)
            return buffer.array()
        }

        fun withCrc(payload: ByteArray): Cmd {
            return copy(crc = calcCrc(payload))
        }
    }

    /**
     * 媒体通道包头（11字节）
     */
    data class Media(
        val payloadType: Int,
        val timestamp: Int,
        val payloadLength: Int
    ) : ChannelHeader() {

        companion object {
            const val OFFSET_MAGIC = 0
            const val OFFSET_PAYLOAD_TYPE = 2
            const val OFFSET_TIMESTAMP = 3
            const val OFFSET_PAYLOAD_LENGTH = 7

            fun fromBytes(bytes: ByteArray): Media {
                require(bytes.size >= MEDIA_HEADER_SIZE) {
                    "Media header requires at least $MEDIA_HEADER_SIZE bytes, got ${bytes.size}"
                }
                val payloadType = bytes[OFFSET_PAYLOAD_TYPE].toInt() and 0xFF
                val timestamp = bytesToIntBE(bytes, OFFSET_TIMESTAMP)
                val payloadLength = bytesToIntBE(bytes, OFFSET_PAYLOAD_LENGTH)
                return Media(payloadType, timestamp, payloadLength)
            }

            private fun bytesToIntBE(bytes: ByteArray, offset: Int): Int {
                return ((bytes[offset].toInt() and 0xFF) shl 24) or
                       ((bytes[offset + 1].toInt() and 0xFF) shl 16) or
                       ((bytes[offset + 2].toInt() and 0xFF) shl 8) or
                       (bytes[offset + 3].toInt() and 0xFF)
            }
        }

        override fun toBytes(): ByteArray {
            val buffer = ByteBuffer.allocate(MEDIA_HEADER_SIZE).order(ByteOrder.BIG_ENDIAN)
            buffer.putShort(MAGIC)
            buffer.put(payloadType.toByte())
            buffer.putInt(timestamp)
            buffer.putInt(payloadLength)
            return buffer.array()
        }
    }
}
