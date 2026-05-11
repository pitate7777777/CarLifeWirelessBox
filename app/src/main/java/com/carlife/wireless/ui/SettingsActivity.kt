package com.carlife.wireless.ui

import android.app.AlertDialog
import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.carlife.wireless.R
import com.carlife.wireless.databinding.ActivitySettingsBinding
import com.carlife.wireless.databinding.DialogCustomResolutionBinding
import com.carlife.wireless.util.LogUtils

/**
 * 设置 Activity
 * 
 * Manifest 中配置：.ui.SettingsActivity
 */
class SettingsActivity : AppCompatActivity() {
    
    companion object {
        private const val TAG = "SettingsActivity"
    }
    
    private lateinit var binding: ActivitySettingsBinding
    private lateinit var resolutions: Array<String> // 改为 var，允许更新

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySettingsBinding.inflate(layoutInflater)
        setContentView(binding.root)
        
        LogUtils.i(TAG, "SettingsActivity onCreate")
        
        // 从资源文件加载分辨率选项
        resolutions = resources.getStringArray(R.array.resolution_options)
        
        setupSpinners()
        loadSettings()
        setupListeners()
    }
    
    private fun setupSpinners() {
        // 分辨率选项（从资源文件加载）
        binding.spinnerResolution.adapter = ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, resolutions)
        
        // 监听分辨率选择
        binding.spinnerResolution.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>, view: View?, position: Int, id: Long) {
                if (resolutions[position] == getString(R.string.resolution_custom)) {
                    showCustomResolutionDialog()
                }
            }
            override fun onNothingSelected(parent: AdapterView<*>) {}
        }
        
        // 帧率选项（从资源文件加载）
        val framerates = resources.getStringArray(R.array.framerate_options)
        binding.spinnerFramerate.adapter = ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, framerates)
        
        // 采样率选项（从资源文件加载）
        val sampleRates = resources.getStringArray(R.array.sample_rate_options)
        binding.spinnerSampleRate.adapter = ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, sampleRates)
    }
    
    private fun loadSettings() {
        LogUtils.d(TAG, "Loading settings...")
        val prefs = getSharedPreferences("carlife_settings", MODE_PRIVATE)
        
        // 加载分辨率
        val resolution = prefs.getString("resolution", "1280x720") ?: "1280x720"
        val resolutionIndex = resolutions.indexOf(resolution).coerceAtLeast(0)
        binding.spinnerResolution.setSelection(resolutionIndex)
        
        // 加载码率（从 bps 转换为 kbps）
        val bitrate = prefs.getInt("bitrate", 2000000)
        binding.seekbarBitrate.progress = bitrate / 1000
        
        // 加载帧率
        val framerate = prefs.getString("framerate", "30") ?: "30"
        val framerateIndex = resources.getStringArray(R.array.framerate_options).indexOf(framerate).coerceAtLeast(0)
        binding.spinnerFramerate.setSelection(framerateIndex)
        
        // 加载采样率
        val sampleRate = prefs.getString("sample_rate", "44100") ?: "44100"
        val sampleRateIndex = resources.getStringArray(R.array.sample_rate_options).indexOf(sampleRate).coerceAtLeast(0)
        binding.spinnerSampleRate.setSelection(sampleRateIndex)
        
        // 加载端口
        val port = prefs.getInt("port", 8234)
        binding.etPort.setText(port.toString())

        // 加载手机 B IP
        val phoneBIp = prefs.getString("phone_b_ip", com.carlife.wireless.util.Constants.IpAddress.USB_TETHERING_LOCAL)
            ?: com.carlife.wireless.util.Constants.IpAddress.USB_TETHERING_LOCAL
        binding.etPhoneBIp.setText(phoneBIp)
    }
    
    private fun setupListeners() {
        binding.btnSave.setOnClickListener {
            LogUtils.i(TAG, "Save button clicked")
            saveSettings()
            finish()
        }
    }
    
    private fun showCustomResolutionDialog() {
        val dialogBinding = DialogCustomResolutionBinding.inflate(layoutInflater)
        val dialogView = dialogBinding.root

        val dialog = AlertDialog.Builder(this)
            .setTitle(getString(R.string.dialog_custom_resolution_title))
            .setView(dialogView)
            .setPositiveButton(getString(R.string.dialog_confirm), null) // 设置为 null，稍后手动处理
            .setNegativeButton(getString(R.string.dialog_cancel)) { _, _ ->
                loadSettings() // 恢复之前的选择
            }
            .setOnCancelListener {
                loadSettings() // 恢复之前的选择
            }
            .create()

        // 手动处理确定按钮点击，避免自动关闭对话框
        dialog.setOnShowListener {
            val positiveButton = dialog.getButton(AlertDialog.BUTTON_POSITIVE)
            positiveButton.setOnClickListener {
                val width = dialogBinding.etCustomWidth.text.toString().toIntOrNull()
                val height = dialogBinding.etCustomHeight.text.toString().toIntOrNull()

                if (width != null && height != null) {
                    if (width in 480..2560 && height in 480..2560 && width % 2 == 0 && height % 2 == 0) {
                        // 有效输入
                        val customResolution = "${width}x${height}"
                        LogUtils.i(TAG, "Custom resolution set: $customResolution")
                        Toast.makeText(this, getString(R.string.toast_custom_resolution_set, customResolution), Toast.LENGTH_SHORT).show()

                        // 更新分辨率列表
                        updateResolutionList(customResolution)
                        dialog.dismiss()
                    } else {
                        // 无效输入，显示错误并清空
                        Toast.makeText(this, getString(R.string.toast_resolution_range_error), Toast.LENGTH_LONG).show()
                        dialogBinding.etCustomWidth.text.clear()
                        dialogBinding.etCustomHeight.text.clear()
                    }
                } else {
                    Toast.makeText(this, getString(R.string.toast_invalid_input), Toast.LENGTH_SHORT).show()
                    dialogBinding.etCustomWidth.text.clear()
                    dialogBinding.etCustomHeight.text.clear()
                }
            }
        }

        dialog.show()
    }
    
    private fun updateResolutionList(customResolution: String) {
        // 移除旧的"自定义..."，添加新分辨率
        val resolutionList = resolutions.toMutableList()
        resolutionList.remove(getString(R.string.resolution_custom))
        if (!resolutionList.contains(customResolution)) {
            resolutionList.add(customResolution)
        }
        resolutionList.add(getString(R.string.resolution_custom)) // 重新添加
        
        // 更新适配器和 Spinner
        val newAdapter = ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, resolutionList.toTypedArray())
        binding.spinnerResolution.adapter = newAdapter
        binding.spinnerResolution.setSelection(resolutionList.indexOf(customResolution))
        
        // 更新类级别的 resolutions 数组
        resolutions = resolutionList.toTypedArray()
    }
    
    private fun saveSettings() {
        LogUtils.d(TAG, "Saving settings...")

        val resolution = binding.spinnerResolution.selectedItem.toString()
        val bitrate = binding.seekbarBitrate.progress * 1000L  // 从 kbps 转换为 bps
        val framerate = binding.spinnerFramerate.selectedItem.toString()
        val sampleRate = binding.spinnerSampleRate.selectedItem.toString()
        val port = binding.etPort.text.toString().toIntOrNull() ?: 8234
        val phoneBIp = binding.etPhoneBIp.text.toString().trim().ifEmpty { com.carlife.wireless.util.Constants.IpAddress.USB_TETHERING_LOCAL }

        // 验证端口号范围
        if (port !in 1024..65535) {
            Toast.makeText(this, getString(R.string.toast_port_range_error), Toast.LENGTH_LONG).show()
            return
        }

        // 保存到 SharedPreferences
        val prefs = getSharedPreferences("carlife_settings", MODE_PRIVATE)
        prefs.edit().apply {
            putString("resolution", resolution)
            putInt("bitrate", bitrate.toInt())
            putString("framerate", framerate)
            putString("sample_rate", sampleRate)
            putInt("port", port)
            putString("phone_b_ip", phoneBIp)
            apply()
        }

        LogUtils.i(TAG, "Settings saved: resolution=$resolution, bitrate=$bitrate, framerate=$framerate, sampleRate=$sampleRate, port=$port, phoneBIp=$phoneBIp")
    }
    
    override fun onDestroy() {
        super.onDestroy()
        LogUtils.i(TAG, "SettingsActivity onDestroy")
    }
}
