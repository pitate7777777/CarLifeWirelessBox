package com.carlife.wireless.ui

import android.os.Bundle
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.EditText
import android.widget.SeekBar
import android.widget.Spinner
import androidx.appcompat.app.AppCompatActivity
import com.carlife.wireless.R
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
    
    private lateinit var spinnerResolution: Spinner
    private lateinit var seekbarBitrate: SeekBar
    private lateinit var spinnerFramerate: Spinner
    private lateinit var spinnerSampleRate: Spinner
    private lateinit var etPort: EditText
    private lateinit var btnSave: Button
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_settings)
        
        LogUtils.i(TAG, "SettingsActivity onCreate")
        
        initViews()
        setupSpinners()
        loadSettings()
        setupListeners()
    }
    
    private fun initViews() {
        spinnerResolution = findViewById(R.id.spinnerResolution)
        seekbarBitrate = findViewById(R.id.seekbarBitrate)
        spinnerFramerate = findViewById(R.id.spinnerFramerate)
        spinnerSampleRate = findViewById(R.id.spinnerSampleRate)
        etPort = findViewById(R.id.etPort)
        btnSave = findViewById(R.id.btnSave)
    }
    
    private fun setupSpinners() {
        // 分辨率选项
        val resolutions = arrayOf("1920x1080", "1280x720", "800x480")
        spinnerResolution.adapter = ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, resolutions)
        
        // 帧率选项
        val framerates = arrayOf("30", "60")
        spinnerFramerate.adapter = ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, framerates)
        
        // 采样率选项
        val sampleRates = arrayOf("44100", "48000")
        spinnerSampleRate.adapter = ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, sampleRates)
    }
    
    private fun loadSettings() {
        LogUtils.d(TAG, "Loading settings...")
        // TODO: �?SharedPreferences 加载设置
    }
    
    private fun setupListeners() {
        btnSave.setOnClickListener {
            LogUtils.i(TAG, "Save button clicked")
            saveSettings()
            finish()
        }
    }
    
    private fun saveSettings() {
        LogUtils.d(TAG, "Saving settings...")
        // TODO: 保存设置�?SharedPreferences
        
        val resolution = spinnerResolution.selectedItem.toString()
        val bitrate = seekbarBitrate.progress
        val framerate = spinnerFramerate.selectedItem.toString()
        val sampleRate = spinnerSampleRate.selectedItem.toString()
        val port = etPort.text.toString()
        
        LogUtils.i(TAG, "Settings saved: resolution=$resolution, bitrate=$bitrate, framerate=$framerate, sampleRate=$sampleRate, port=$port")
    }
    
    override fun onDestroy() {
        super.onDestroy()
        LogUtils.i(TAG, "SettingsActivity onDestroy")
    }
}
