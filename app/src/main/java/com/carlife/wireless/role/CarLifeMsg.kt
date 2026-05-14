package com.carlife.wireless.role

/**
 * CarLife 协议消息 ID 常量
 *
 * 消息 ID 编码规则：
 * - 0x0001xxxx = CMD 通道消息
 * - 0x000180xx = HU(车机) → MD(手机)
 * - 0x000100xx = MD(手机) → HU(车机)
 * - 0x0002xxxx = VIDEO 通道
 * - 0x0003xxxx = MEDIA 通道
 * - 0x0004xxxx = TTS 通道
 * - 0x0005xxxx = VR 通道
 *   - 0x000580xx = HU → MD
 * - 0x0006xxxx = CTRL 通道
 *   - 0x000680xx = HU → MD
 */
object CarLifeMsg {
    // ==================== CMD 通道 — HU 发送 ====================

    const val HU_PROTOCOL_VERSION         = 0x00018001
    const val HU_INFO                     = 0x00018003
    const val VIDEO_ENCODER_INIT          = 0x00018007
    const val VIDEO_ENCODER_START         = 0x00018009
    const val VIDEO_ENCODER_PAUSE         = 0x0001800A
    const val VIDEO_ENCODER_RESET         = 0x0001800B
    const val HU_AUTHEN_REQUEST           = 0x00018048
    const val HU_AUTHEN_RESULT            = 0x0001804A
    const val HU_FEATURE_CONFIG_RESPONSE  = 0x00018052

    // v2.3.0 新增
    const val HU_REGISTER_RESPONSE           = 0x00018002
    const val HU_STATISTIC_INFO              = 0x00018027
    const val HU_MODULE_CONTROL              = 0x00018028
    const val HU_CAR_DATA_GEAR               = 0x00018029
    const val HU_CAR_DATA_SUBSCRIBE_DONE     = 0x00018032
    const val HU_BT_HFP_INDICATION           = 0x00018041
    const val HU_BT_HFP_CONNECTION           = 0x00018042
    const val HU_CARLIFE_DATA_SUBSCRIBE      = 0x00018043
    const val HU_CARLIFE_DATA_SUBSCRIBE_START = 0x00018045
    const val HU_CARLIFE_DATA_SUBSCRIBE_STOP = 0x00018046
    const val HU_BT_HFP_RESPONSE             = 0x0001804E
    const val HU_BT_HFP_STATUS_RESPONSE      = 0x00018050
    const val HU_BT_START_IDENTIFY_REQ       = 0x00018053
    const val HU_ERROR_CODE                  = 0x00018055
    const val HU_VIDEO_ENCODER_JPEG          = 0x00018056
    const val HU_VEHICLE_CONTROL_INFO        = 0x00018061
    const val HU_CONNECT_STATISTIC           = 0x00018070

    // ==================== CMD 通道 — MD 发送 ====================

    const val VERSION_MATCH_STATUS        = 0x00010002
    const val MD_INFO                     = 0x00010004
    const val VIDEO_ENCODER_INIT_DONE     = 0x00010008
    const val MD_AUTHEN_RESPONSE          = 0x00010049
    const val MD_AUTHEN_RESULT            = 0x0001004B
    const val MD_FEATURE_CONFIG_REQUEST   = 0x00010051

    // v2.3.0 新增
    const val MD_REGISTER_TYPE               = 0x00010001
    const val MD_MODULE_STATUS               = 0x00010026
    const val MD_NAVI_NEXT_TURN_INFO         = 0x00010030
    const val MD_CAR_DATA_SUBSCRIBE          = 0x00010031
    const val MD_CAR_DATA_SUBSCRIBE_START    = 0x00010033
    const val MD_CAR_DATA_SUBSCRIBE_STOP     = 0x00010034
    const val MD_MEDIA_INFO                  = 0x00010035
    const val MD_MEDIA_PROGRESS_BAR          = 0x00010036
    const val MD_CONNECT_EXCEPTION           = 0x00010037
    const val MD_REQUEST_GO_TO_FOREGROUND    = 0x00010038
    const val MD_UI_ACTION_SOUND             = 0x00010039
    const val MD_BT_HFP_REQUEST              = 0x00010040
    const val MD_CARLIFE_DATA_SUBSCRIBE_DONE = 0x00010044
    const val MD_NAVI_ASSITANTGUIDE_INFO     = 0x00010047
    const val MD_BT_HFP_STATUS_REQUEST       = 0x0001004F
    const val MD_BT_IDENTIFY_RESULT_IND      = 0x00010054
    const val MD_VIDEO_ENCODER_JPEG_ACK      = 0x00010057
    const val MD_BT_HFP_CALL_STATUS_COVER    = 0x00010058
    const val MD_EXIT                        = 0x00010059
    const val MD_VEHICLE_CONTROL             = 0x0001006F

    // ==================== VIDEO 通道 ====================

    const val VIDEO_DATA                  = 0x00020001
    const val VIDEO_HEARTBEAT             = 0x00020002

    // ==================== MEDIA 通道 ====================

    const val MEDIA_INIT                  = 0x00030001
    const val MEDIA_STOP                  = 0x00030002
    const val MEDIA_PAUSE                 = 0x00030003
    const val MEDIA_RESUME                = 0x00030004
    const val MEDIA_SEEK_TO               = 0x00030005
    const val MEDIA_DATA                  = 0x00030006

    // ==================== TTS 通道 ====================

    const val TTS_INIT                    = 0x00040001
    const val TTS_STOP                    = 0x00040002
    const val TTS_DATA                    = 0x00040003

    // ==================== VR 通道 ====================

    const val VR_MIC_DATA                 = 0x00058001
    const val VR_INIT                     = 0x00050002
    const val VR_DATA                     = 0x00050003
    const val VR_STOP                     = 0x00050004

    // v2.3.0 新增
    const val VR_MODULE_STATUS               = 0x00050005
    const val VR_AUDIO_INTERRUPT             = 0x00050006

    // ==================== CTRL 通道 ====================

    const val TOUCH_ACTION                = 0x00068001
    const val TOUCH_ACTION_DOWN           = 0x00068002
    const val TOUCH_ACTION_UP             = 0x00068003
    const val TOUCH_ACTION_MOVE           = 0x00068004
    const val TOUCH_SINGLE_CLICK          = 0x00068005
    const val TOUCH_DOUBLE_CLICK          = 0x00068006
    const val TOUCH_LONG_PRESS            = 0x00068007
    const val TOUCH_CAR_HARD_KEY_CODE     = 0x00068008

    // v2.3.0 新增 — 双指触控
    const val TOUCH_ACTION_POINTER_DOWN      = 0x0006800B
    const val TOUCH_ACTION_POINTER_UP        = 0x0006800C
    const val TOUCH_ACTION_OTHERPOINTER_UP   = 0x0006800D
}
