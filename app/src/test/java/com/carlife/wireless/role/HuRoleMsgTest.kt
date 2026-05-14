package com.carlife.wireless.role

import org.junit.Assert.*
import org.junit.Test

class HuRoleMsgTest {

    // ==================== CMD HU 消息 ID 范围 ====================

    @Test
    fun `CarLifeMsg CMD HU message IDs are in 0x000180xx range`() {
        assertTrue(CarLifeMsg.HU_PROTOCOL_VERSION in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.HU_INFO in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.VIDEO_ENCODER_INIT in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.VIDEO_ENCODER_START in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.VIDEO_ENCODER_PAUSE in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.VIDEO_ENCODER_RESET in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.HU_AUTHEN_REQUEST in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.HU_AUTHEN_RESULT in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.HU_FEATURE_CONFIG_RESPONSE in 0x00018000..0x00018FFF)
    }

    // ==================== CMD MD 消息 ID 范围 ====================

    @Test
    fun `CarLifeMsg CMD MD message IDs are in 0x000100xx range`() {
        assertTrue(CarLifeMsg.VERSION_MATCH_STATUS in 0x00010000..0x00010FFF)
        assertTrue(CarLifeMsg.MD_INFO in 0x00010000..0x00010FFF)
        assertTrue(CarLifeMsg.VIDEO_ENCODER_INIT_DONE in 0x00010000..0x00010FFF)
        assertTrue(CarLifeMsg.MD_AUTHEN_RESPONSE in 0x00010000..0x00010FFF)
        assertTrue(CarLifeMsg.MD_AUTHEN_RESULT in 0x00010000..0x00010FFF)
        assertTrue(CarLifeMsg.MD_FEATURE_CONFIG_REQUEST in 0x00010000..0x00010FFF)
    }

    // ==================== VIDEO 通道消息 ID ====================

    @Test
    fun `CarLifeMsg VIDEO channel IDs are in 0x0002xxxx range`() {
        assertEquals(0x00020001, CarLifeMsg.VIDEO_DATA)
        assertEquals(0x00020002, CarLifeMsg.VIDEO_HEARTBEAT)
    }

    // ==================== MEDIA 通道消息 ID ====================

    @Test
    fun `CarLifeMsg MEDIA channel IDs are in 0x0003xxxx range`() {
        assertEquals(0x00030001, CarLifeMsg.MEDIA_INIT)
        assertEquals(0x00030002, CarLifeMsg.MEDIA_STOP)
        assertEquals(0x00030003, CarLifeMsg.MEDIA_PAUSE)
        assertEquals(0x00030004, CarLifeMsg.MEDIA_RESUME)
        assertEquals(0x00030005, CarLifeMsg.MEDIA_SEEK_TO)
        assertEquals(0x00030006, CarLifeMsg.MEDIA_DATA)
    }

    // ==================== TTS 通道消息 ID ====================

    @Test
    fun `CarLifeMsg TTS channel IDs are in 0x0004xxxx range`() {
        assertEquals(0x00040001, CarLifeMsg.TTS_INIT)
        assertEquals(0x00040002, CarLifeMsg.TTS_STOP)
        assertEquals(0x00040003, CarLifeMsg.TTS_DATA)
    }

    // ==================== VR 通道消息 ID ====================

    @Test
    fun `CarLifeMsg VR channel IDs are in 0x0005xxxx range`() {
        assertEquals(0x00058001, CarLifeMsg.VR_MIC_DATA)
        assertEquals(0x00050002, CarLifeMsg.VR_INIT)
        assertEquals(0x00050003, CarLifeMsg.VR_DATA)
        assertEquals(0x00050004, CarLifeMsg.VR_STOP)
    }

    // ==================== CTRL 通道消息 ID ====================

    @Test
    fun `CarLifeMsg CTRL channel IDs are in 0x0006xxxx range`() {
        assertEquals(0x00068001, CarLifeMsg.TOUCH_ACTION)
        assertEquals(0x00068002, CarLifeMsg.TOUCH_ACTION_DOWN)
        assertEquals(0x00068003, CarLifeMsg.TOUCH_ACTION_UP)
        assertEquals(0x00068004, CarLifeMsg.TOUCH_ACTION_MOVE)
        assertEquals(0x00068005, CarLifeMsg.TOUCH_SINGLE_CLICK)
        assertEquals(0x00068006, CarLifeMsg.TOUCH_DOUBLE_CLICK)
        assertEquals(0x00068007, CarLifeMsg.TOUCH_LONG_PRESS)
        assertEquals(0x00068008, CarLifeMsg.TOUCH_CAR_HARD_KEY_CODE)
    }

    // ==================== 消息 ID 不冲突 ====================

    @Test
    fun `HU and MD message IDs do not collide`() {
        val huIds = setOf(
            CarLifeMsg.HU_PROTOCOL_VERSION,
            CarLifeMsg.HU_INFO,
            CarLifeMsg.VIDEO_ENCODER_INIT,
            CarLifeMsg.VIDEO_ENCODER_START,
            CarLifeMsg.VIDEO_ENCODER_PAUSE,
            CarLifeMsg.VIDEO_ENCODER_RESET,
            CarLifeMsg.HU_AUTHEN_REQUEST,
            CarLifeMsg.HU_AUTHEN_RESULT,
            CarLifeMsg.HU_FEATURE_CONFIG_RESPONSE
        )
        val mdIds = setOf(
            CarLifeMsg.VERSION_MATCH_STATUS,
            CarLifeMsg.MD_INFO,
            CarLifeMsg.VIDEO_ENCODER_INIT_DONE,
            CarLifeMsg.MD_AUTHEN_RESPONSE,
            CarLifeMsg.MD_AUTHEN_RESULT,
            CarLifeMsg.MD_FEATURE_CONFIG_REQUEST
        )
        assertTrue("HU and MD message IDs should not overlap", huIds.intersect(mdIds).isEmpty())
    }

    @Test
    fun `all message IDs are unique across channels`() {
        val allIds = listOf(
            CarLifeMsg.HU_PROTOCOL_VERSION, CarLifeMsg.HU_INFO,
            CarLifeMsg.VIDEO_ENCODER_INIT, CarLifeMsg.VIDEO_ENCODER_START,
            CarLifeMsg.VIDEO_ENCODER_PAUSE, CarLifeMsg.VIDEO_ENCODER_RESET,
            CarLifeMsg.HU_AUTHEN_REQUEST, CarLifeMsg.HU_AUTHEN_RESULT,
            CarLifeMsg.HU_FEATURE_CONFIG_RESPONSE,
            CarLifeMsg.VERSION_MATCH_STATUS, CarLifeMsg.MD_INFO,
            CarLifeMsg.VIDEO_ENCODER_INIT_DONE,
            CarLifeMsg.MD_AUTHEN_RESPONSE, CarLifeMsg.MD_AUTHEN_RESULT,
            CarLifeMsg.MD_FEATURE_CONFIG_REQUEST,
            CarLifeMsg.VIDEO_DATA, CarLifeMsg.VIDEO_HEARTBEAT,
            CarLifeMsg.MEDIA_INIT, CarLifeMsg.MEDIA_STOP,
            CarLifeMsg.MEDIA_PAUSE, CarLifeMsg.MEDIA_RESUME,
            CarLifeMsg.MEDIA_SEEK_TO, CarLifeMsg.MEDIA_DATA,
            CarLifeMsg.TTS_INIT, CarLifeMsg.TTS_STOP, CarLifeMsg.TTS_DATA,
            CarLifeMsg.VR_MIC_DATA, CarLifeMsg.VR_INIT,
            CarLifeMsg.VR_DATA, CarLifeMsg.VR_STOP,
            CarLifeMsg.TOUCH_ACTION, CarLifeMsg.TOUCH_ACTION_DOWN,
            CarLifeMsg.TOUCH_ACTION_UP, CarLifeMsg.TOUCH_ACTION_MOVE,
            CarLifeMsg.TOUCH_SINGLE_CLICK, CarLifeMsg.TOUCH_DOUBLE_CLICK,
            CarLifeMsg.TOUCH_LONG_PRESS, CarLifeMsg.TOUCH_CAR_HARD_KEY_CODE,
            // v2.3.0 new MD messages
            CarLifeMsg.MD_REGISTER_TYPE, CarLifeMsg.MD_MODULE_STATUS,
            CarLifeMsg.MD_NAVI_NEXT_TURN_INFO, CarLifeMsg.MD_CAR_DATA_SUBSCRIBE,
            CarLifeMsg.MD_CAR_DATA_SUBSCRIBE_START, CarLifeMsg.MD_CAR_DATA_SUBSCRIBE_STOP,
            CarLifeMsg.MD_MEDIA_INFO, CarLifeMsg.MD_MEDIA_PROGRESS_BAR,
            CarLifeMsg.MD_CONNECT_EXCEPTION, CarLifeMsg.MD_REQUEST_GO_TO_FOREGROUND,
            CarLifeMsg.MD_UI_ACTION_SOUND, CarLifeMsg.MD_BT_HFP_REQUEST,
            CarLifeMsg.MD_CARLIFE_DATA_SUBSCRIBE_DONE, CarLifeMsg.MD_NAVI_ASSITANTGUIDE_INFO,
            CarLifeMsg.MD_BT_HFP_STATUS_REQUEST, CarLifeMsg.MD_BT_IDENTIFY_RESULT_IND,
            CarLifeMsg.MD_VIDEO_ENCODER_JPEG_ACK, CarLifeMsg.MD_BT_HFP_CALL_STATUS_COVER,
            CarLifeMsg.MD_EXIT, CarLifeMsg.MD_VEHICLE_CONTROL,
            // v2.3.0 new HU messages
            CarLifeMsg.HU_REGISTER_RESPONSE, CarLifeMsg.HU_STATISTIC_INFO,
            CarLifeMsg.HU_MODULE_CONTROL, CarLifeMsg.HU_CAR_DATA_GEAR,
            CarLifeMsg.HU_CAR_DATA_SUBSCRIBE_DONE, CarLifeMsg.HU_BT_HFP_INDICATION,
            CarLifeMsg.HU_BT_HFP_CONNECTION, CarLifeMsg.HU_CARLIFE_DATA_SUBSCRIBE,
            CarLifeMsg.HU_CARLIFE_DATA_SUBSCRIBE_START, CarLifeMsg.HU_CARLIFE_DATA_SUBSCRIBE_STOP,
            CarLifeMsg.HU_BT_HFP_RESPONSE, CarLifeMsg.HU_BT_HFP_STATUS_RESPONSE,
            CarLifeMsg.HU_BT_START_IDENTIFY_REQ, CarLifeMsg.HU_ERROR_CODE,
            CarLifeMsg.HU_VIDEO_ENCODER_JPEG, CarLifeMsg.HU_VEHICLE_CONTROL_INFO,
            CarLifeMsg.HU_CONNECT_STATISTIC,
            // v2.3.0 new VR messages
            CarLifeMsg.VR_MODULE_STATUS, CarLifeMsg.VR_AUDIO_INTERRUPT,
            // v2.3.0 new touch messages
            CarLifeMsg.TOUCH_ACTION_POINTER_DOWN, CarLifeMsg.TOUCH_ACTION_POINTER_UP,
            CarLifeMsg.TOUCH_ACTION_OTHERPOINTER_UP
        )
        assertEquals("All message IDs should be unique", allIds.size, allIds.toSet().size)
    }

    // ==================== HuState 枚举 ====================

    @Test
    fun `HuState has all required states`() {
        val states = HuState.entries.map { it.name }
        assertTrue(states.contains("IDLE"))
        assertTrue(states.contains("CONNECTING"))
        assertTrue(states.contains("AUTHENTICATING"))
        assertTrue(states.contains("REGISTERING"))
        assertTrue(states.contains("NEGOTIATING"))
        assertTrue(states.contains("CONNECTED"))
        assertTrue(states.contains("DISCONNECTED"))
    }

    @Test
    fun `HuState has exactly 7 states`() {
        assertEquals(7, HuState.entries.size)
    }

    // ==================== 握手阶段顺序 ====================

    @Test
    fun `handshake phases follow correct order`() {
        // Phase 1: HU_PROTOCOL_VERSION → VERSION_MATCH_STATUS
        // Phase 2: HU_INFO → MD_INFO
        // Phase 3: HU_AUTHEN_REQUEST → MD_AUTHEN_RESPONSE
        // Phase 4: HU_AUTHEN_RESULT → MD_AUTHEN_RESULT
        // Phase 5: MD_FEATURE_CONFIG_REQUEST → HU_FEATURE_CONFIG_RESPONSE
        // Phase 6: VIDEO_ENCODER_INIT → VIDEO_ENCODER_INIT_DONE
        // Phase 7: VIDEO_ENCODER_START

        // HU 发起的消息 ID 应 < MD 响应的消息 ID（在各自范围内）
        assertTrue(CarLifeMsg.HU_PROTOCOL_VERSION < CarLifeMsg.VERSION_MATCH_STATUS)
        assertTrue(CarLifeMsg.HU_INFO < CarLifeMsg.MD_INFO)
    }

    @Test
    fun `TOUCH message IDs are sequential`() {
        assertEquals(CarLifeMsg.TOUCH_ACTION + 1, CarLifeMsg.TOUCH_ACTION_DOWN)
        assertEquals(CarLifeMsg.TOUCH_ACTION_DOWN + 1, CarLifeMsg.TOUCH_ACTION_UP)
        assertEquals(CarLifeMsg.TOUCH_ACTION_UP + 1, CarLifeMsg.TOUCH_ACTION_MOVE)
        assertEquals(CarLifeMsg.TOUCH_ACTION_MOVE + 1, CarLifeMsg.TOUCH_SINGLE_CLICK)
        assertEquals(CarLifeMsg.TOUCH_SINGLE_CLICK + 1, CarLifeMsg.TOUCH_DOUBLE_CLICK)
        assertEquals(CarLifeMsg.TOUCH_DOUBLE_CLICK + 1, CarLifeMsg.TOUCH_LONG_PRESS)
        assertEquals(CarLifeMsg.TOUCH_LONG_PRESS + 1, CarLifeMsg.TOUCH_CAR_HARD_KEY_CODE)
    }

    // ==================== v2.3.0 新增消息 ID 验证 ====================

    @Test
    fun `v2_3_0 new CMD MD message IDs are in 0x000100xx range`() {
        assertTrue(CarLifeMsg.MD_REGISTER_TYPE in 0x00010000..0x00010FFF)
        assertTrue(CarLifeMsg.MD_MODULE_STATUS in 0x00010000..0x00010FFF)
        assertTrue(CarLifeMsg.MD_NAVI_NEXT_TURN_INFO in 0x00010000..0x00010FFF)
        assertTrue(CarLifeMsg.MD_CAR_DATA_SUBSCRIBE in 0x00010000..0x00010FFF)
        assertTrue(CarLifeMsg.MD_EXIT in 0x00010000..0x00010FFF)
        assertTrue(CarLifeMsg.MD_VEHICLE_CONTROL in 0x00010000..0x00010FFF)
    }

    @Test
    fun `v2_3_0 new CMD HU message IDs are in 0x000180xx range`() {
        assertTrue(CarLifeMsg.HU_REGISTER_RESPONSE in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.HU_STATISTIC_INFO in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.HU_MODULE_CONTROL in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.HU_CAR_DATA_GEAR in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.HU_VEHICLE_CONTROL_INFO in 0x00018000..0x00018FFF)
        assertTrue(CarLifeMsg.HU_CONNECT_STATISTIC in 0x00018000..0x00018FFF)
    }

    @Test
    fun `v2_3_0 VR channel IDs are in 0x0005xxxx range`() {
        assertEquals(0x00050005, CarLifeMsg.VR_MODULE_STATUS)
        assertEquals(0x00050006, CarLifeMsg.VR_AUDIO_INTERRUPT)
    }

    @Test
    fun `v2_3_0 dual finger touch IDs are sequential`() {
        assertEquals(0x0006800B, CarLifeMsg.TOUCH_ACTION_POINTER_DOWN)
        assertEquals(0x0006800C, CarLifeMsg.TOUCH_ACTION_POINTER_UP)
        assertEquals(0x0006800D, CarLifeMsg.TOUCH_ACTION_OTHERPOINTER_UP)
        assertEquals(CarLifeMsg.TOUCH_CAR_HARD_KEY_CODE + 3, CarLifeMsg.TOUCH_ACTION_POINTER_DOWN)
    }
}
