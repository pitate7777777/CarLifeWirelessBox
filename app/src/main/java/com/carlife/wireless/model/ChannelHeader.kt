package com.carlife.wireless.model

import com.carlife.wireless.util.ByteUtils
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * 协议包头定义
 *
 * CMD 通道包头（8字节）：
 * - magic (2字节): 固定 0x434C ("CL")
 * - payloadType (1字节): 消息类型
 * - payloadLength (4字节): 载荷长度
 * - crc (1字节): 校验和
 *
 * 媒体通道包头（13字节）：
 * - magic (2字节): 固定 0x434C ("CL")
 * - payloadType (1字节): 媒体类型
 * - timestamp (4字节): 时间戳（毫秒）
 * - payloadLength (4字节): 载荷长度
 * - frameIndex (1字节): 帧序号
 *
 * 使用 Big-Endian 字节序（与 ByteUtils 一致）
 */
sealed class ChannelHeader {

    companion object {
        /** 协议魔数固定值 - "CL" 的 ASCII 码 */
        const val MAGIC: Short = 0x434C.toShort()

        /** CMD 通道包头大小（字节） */
        const val CMD_HEADER_SIZE = 8

        /** 媒体通道包头大小（字节）: CmdHeader(8) + timestamp(4) + frameIndex(1) */
        const val MEDIA_HEADER_SIZE = 13
    }

    /**
     * CMD 通道包头（8字节）
     *
     * @property payloadType 消息类型（对应 CarLife 协议消息 ID）
     * @property payloadLength 载荷数据长度（字节）
     * @property crc 校验和（简单加和校验，低 8 位）
     */
    data class Cmd(
        val payloadType: Int,
        val payloadLength: Int,
        var crc: Byte = 0
    ) : ChannelHeader() {

        companion object {
            /** 偏移量定义 */
            const val OFFSET_MAGIC = 0
            const val OFFSET_PAYLOAD_TYPE = 2
            const val OFFSET_PAYLOAD_LENGTH = 3
            const val OFFSET_CRC = 7

            /** 从字节数组解析 CMD 包头 */
            fun fromBytes(bytes: ByteArray): Cmd {
                require(bytes.size >= CMD_HEADER_SIZE) {
                    "CMD header requires at least $CMD_HEADER_SIZE bytes, got ${bytes.size}"
                }
                val payloadType = bytes[OFFSET_PAYLOAD_TYPE].toInt() and 0xFF
                val payloadLength = ByteUtils.bytesToInt(bytes, OFFSET_PAYLOAD_LENGTH)
                val crc = bytes[OFFSET_CRC]
                return Cmd(payloadType, payloadLength, crc)
            }

            /** 计算 CRC 校验和（简单加和，取低 8 位） */
            fun calcCrc(payload: ByteArray): Byte {
                var sum = 0
                for (b in payload) {
                    sum += b.toInt() and 0xFF
                }
                return (sum and 0xFF).toByte()
            }
        }

        /** 序列化为 8 字节数组 */
        fun toBytes(): ByteArray {
            val buffer = ByteBuffer.allocate(CMD_HEADER_SIZE).order(ByteOrder.BIG_ENDIAN)
            buffer.putShort(MAGIC)
            buffer.put(payloadType.toByte())
            buffer.put(ByteUtils.intToBytes(payloadLength))
            buffer.put(crc)
            return buffer.array()
        }

        /** 计算并设置 CRC 校验和（简单加和校验，取低8位） */
        fun updateCrc(payload: ByteArray) {
            var sum = 0
            for (b in payload) {
                sum += b.toInt() and 0xFF
            }
            crc = (sum and 0xFF).toByte()
        }
    }

    /**
     * 媒体通道包头（13字节）
     *
     * @property payloadType 媒体类型（VIDEO=1, AUDIO=2）
     * @property timestamp 时间戳（毫秒）
     * @property payloadLength 载荷数据长度（字节）
     * @property frameIndex 帧序号（循环计数 0~255）
     */
    data class Media(
        val payloadType: Int,
        val timestamp: Int,
        val payloadLength: Int,
        val frameIndex: Byte = 0
    ) : ChannelHeader() {

        companion object {
            /** 偏移量定义 - 13字节媒体包头 */
            const val OFFSET_MAGIC = 0
            const val OFFSET_PAYLOAD_TYPE = 2
            const val OFFSET_TIMESTAMP = 3
            const val OFFSET_PAYLOAD_LENGTH = 7
            const val OFFSET_FRAME_INDEX = 12  // 第13个字节（0-indexed）

            /** 从字节数组解析媒体包头 */
            fun fromBytes(bytes: ByteArray): Media {
                require(bytes.size >= MEDIA_HEADER_SIZE) {
                    "Media header requires at least $MEDIA_HEADER_SIZE bytes, got ${bytes.size}"
                }
                val payloadType = bytes[OFFSET_PAYLOAD_TYPE].toInt() and 0xFF
                val timestamp = ByteUtils.bytesToInt(bytes, OFFSET_TIMESTAMP)
                val payloadLength = ByteUtils.bytesToInt(bytes, OFFSET_PAYLOAD_LENGTH)
                val frameIndex = bytes[OFFSET_FRAME_INDEX]
                return Media(payloadType, timestamp, payloadLength, frameIndex)
            }
        }

        /** 序列化为 13 字节数组 */
        fun toBytes(): ByteArray {
            val buffer = ByteBuffer.allocate(MEDIA_HEADER_SIZE).order(ByteOrder.BIG_ENDIAN)
            buffer.putShort(MAGIC)
            buffer.put(payloadType.toByte())
            buffer.put(ByteUtils.intToBytes(timestamp))
            buffer.put(ByteUtils.intToBytes(payloadLength))
            buffer.put(frameIndex)
            return buffer.array()
        }
    }
}
