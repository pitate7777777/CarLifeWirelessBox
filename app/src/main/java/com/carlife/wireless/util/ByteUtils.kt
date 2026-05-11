package com.carlife.wireless.util

import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * 字节工具类
 * 提供字节数组与基本类型之间的转换功能
 * 注意：CarLife协议使用Big-Endian（高位在前）
 */
object ByteUtils {
    
    /**
     * 将Int转换为字节数组（4字节，Big-Endian）
     * @param value 整数值
     * @return 4字节数组
     */
    fun intToBytes(value: Int): ByteArray {
        return ByteBuffer.allocate(4)
            .order(ByteOrder.BIG_ENDIAN)
            .putInt(value)
            .array()
    }
    
    /**
     * 将Short转换为字节数组（2字节，Big-Endian）
     * @param value 短整数值
     * @return 2字节数组
     */
    fun shortToBytes(value: Short): ByteArray {
        return ByteBuffer.allocate(2)
            .order(ByteOrder.BIG_ENDIAN)
            .putShort(value)
            .array()
    }
    
    /**
     * 将字节数组转换为Int
     * @param bytes 字节数组
     * @param offset 起始偏移量
     * @param order 字节序，默认Big-Endian
     * @return 整数值
     */
    fun bytesToInt(bytes: ByteArray, offset: Int = 0, order: ByteOrder = ByteOrder.BIG_ENDIAN): Int {
        val length = minOf(4, bytes.size - offset)
        val buffer = ByteBuffer.allocate(4)
            .order(order)
        
        // 处理不足4字节的情况
        if (order == ByteOrder.BIG_ENDIAN) {
            for (i in 0 until 4 - length) {
                buffer.put(0.toByte())
            }
            for (i in 0 until length) {
                buffer.put(bytes[offset + i])
            }
        } else {
            for (i in 0 until length) {
                buffer.put(bytes[offset + i])
            }
            for (i in 0 until 4 - length) {
                buffer.put(0.toByte())
            }
        }
        
        buffer.flip()
        return buffer.int
    }
    
    /**
     * 将字节数组转换为Short
     * @param bytes 字节数组
     * @param offset 起始偏移量
     * @return 短整数值
     */
    fun bytesToShort(bytes: ByteArray, offset: Int = 0): Short {
        val buffer = ByteBuffer.allocate(2)
            .order(ByteOrder.BIG_ENDIAN)
        
        val length = minOf(2, bytes.size - offset)
        for (i in 0 until 2 - length) {
            buffer.put(0.toByte())
        }
        for (i in 0 until length) {
            buffer.put(bytes[offset + i])
        }
        
        buffer.flip()
        return buffer.short
    }
    
    /**
     * 连接多个字节数组
     * @param arrays 字节数组列表
     * @return 连接后的字节数组
     */
    fun concat(vararg arrays: ByteArray): ByteArray {
        val totalLength = arrays.sumOf { it.size }
        val result = ByteArray(totalLength)
        var offset = 0
        
        for (array in arrays) {
            System.arraycopy(array, 0, result, offset, array.size)
            offset += array.size
        }
        
        return result
    }
    
    /**
     * 生成十六进制转储字符串
     * 格式：每行16字节，以空格分隔，换行显示
     * 示例："01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F 10\n11 12 13 14..."
     * @param bytes 字节数组
     * @param offset 起始偏移量
     * @param length 要转储的字节数
     * @return 十六进制转储字符串
     */
    fun hexDump(bytes: ByteArray, offset: Int = 0, length: Int = bytes.size): String {
        val actualLength = minOf(length, bytes.size - offset)
        val result = StringBuilder()
        
        for (i in 0 until actualLength step 16) {
            if (i > 0) {
                result.append("\n")
            }
            
            val lineEnd = minOf(i + 16, actualLength)
            for (j in i until lineEnd) {
                if (j > i) {
                    result.append(" ")
                }
                result.append(String.format("%02X", (bytes[offset + j].toInt() and 0xFF)))
            }
        }
        
        return result.toString()
    }
}
