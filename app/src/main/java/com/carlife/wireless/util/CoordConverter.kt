package com.carlife.wireless.util

/**
 * 触摸坐标转换器
 * 将车机坐标映射到手机屏幕坐标
 */
class CoordConverter(
    private val screenWidth: Int,
    private val screenHeight: Int,
    private val carDisplayWidth: Int,
    private val carDisplayHeight: Int
) {
    // 横屏因子
    private val landscapeFactorW = screenWidth.toFloat() / carDisplayWidth
    private val landscapeFactorH = screenHeight.toFloat() / carDisplayHeight

    // 竖屏因子
    private val portraitCarWidth = carDisplayWidth.toFloat() * carDisplayHeight / screenWidth
    private val portraitFactorW = screenHeight.toFloat() / portraitCarWidth
    private val portraitFactorH = screenWidth.toFloat() / carDisplayHeight
    private val portraitLeftX = (carDisplayWidth - portraitCarWidth) / 2f

    /**
     * 转换坐标
     * @param carX 车机 X 坐标
     * @param carY 车机 Y 坐标
     * @param rotation 屏幕方向 (Surface.ROTATION_0/90/180/270)
     * @return Pair(phoneX, phoneY) 手机坐标
     */
    fun convert(carX: Float, carY: Float, rotation: Int): Pair<Float, Float> {
        val phoneX: Float
        val phoneY: Float

        when (rotation) {
            0, 2 -> { // ROTATION_0, ROTATION_180 — 竖屏
                phoneX = (carX - portraitLeftX) * portraitFactorW
                phoneY = carY * portraitFactorH
            }
            1, 3 -> { // ROTATION_90, ROTATION_270 — 横屏
                phoneX = carX * landscapeFactorW
                phoneY = carY * landscapeFactorH
            }
            else -> {
                phoneX = carX * screenWidth / carDisplayWidth
                phoneY = carY * screenHeight / carDisplayHeight
            }
        }

        // 边界保护
        val maxX = if (rotation == 0 || rotation == 2) screenHeight.toFloat() else screenWidth.toFloat()
        val maxY = if (rotation == 0 || rotation == 2) screenWidth.toFloat() else screenHeight.toFloat()

        return Pair(
            phoneX.coerceIn(0f, maxX - 1),
            phoneY.coerceIn(0f, maxY - 1)
        )
    }

    companion object {
        const val ROTATION_0 = 0
        const val ROTATION_90 = 1
        const val ROTATION_180 = 2
        const val ROTATION_270 = 3
    }
}
