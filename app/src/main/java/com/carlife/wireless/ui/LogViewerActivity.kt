package com.carlife.wireless.ui

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Spinner
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.carlife.wireless.R
import com.carlife.wireless.util.LogFileManager
import java.io.File

/**
 * 日志查看器 Activity
 * 
 * 功能：
 * 1. 显示所有日志文件
 * 2. 查看日志文件内容
 * 3. 分享日志文件
 */
class LogViewerActivity : AppCompatActivity() {

    companion object {
        private const val TAG = "LogViewerActivity"
    }

    private lateinit var spinnerLogFiles: Spinner
    private lateinit var tvLogContent: TextView
    private lateinit var logFiles: List<File>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_log_viewer)

        // 设置工具栏
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        setSupportActionBar(toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        toolbar.setNavigationOnClickListener {
            finish()
        }

        spinnerLogFiles = findViewById(R.id.spinnerLogFiles)
        tvLogContent = findViewById(R.id.tvLogContent)

        // 加载日志文件列表
        loadLogFiles()

        // 设置 Spinner 选择监听器
        spinnerLogFiles.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>, view: android.view.View?, position: Int, id: Long) {
                if (position >= 0 && position < logFiles.size) {
                    val selectedFile = logFiles[position]
                    displayLogContent(selectedFile)
                }
            }

            override fun onNothingSelected(parent: AdapterView<*>) {
                // Do nothing
            }
        }

        // 刷新按钮
        findViewById<com.google.android.material.button.MaterialButton>(R.id.btnRefresh).setOnClickListener {
            loadLogFiles()
            Toast.makeText(this, "日志列表已刷新", Toast.LENGTH_SHORT).show()
        }

        // 分享按钮
        findViewById<com.google.android.material.button.MaterialButton>(R.id.btnShare).setOnClickListener {
            shareCurrentLog()
        }
    }

    /**
     * 加载日志文件列表
     */
    private fun loadLogFiles() {
        logFiles = LogFileManager.getLogFiles(this)

        if (logFiles.isEmpty()) {
            Toast.makeText(this, "没有日志文件", Toast.LENGTH_SHORT).show()
            tvLogContent.text = "没有日志文件"
            return
        }

        val fileNames = logFiles.map { it.name }
        val adapter = ArrayAdapter(this, android.R.layout.simple_spinner_item, fileNames)
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        spinnerLogFiles.adapter = adapter

        // 默认选择第一个（最新的日志）
        if (logFiles.isNotEmpty()) {
            spinnerLogFiles.setSelection(0)
            displayLogContent(logFiles[0])
        }
    }

    /**
     * 显示日志文件内容
     */
    private fun displayLogContent(logFile: File) {
        val content = LogFileManager.getLogContent(logFile)
        tvLogContent.text = content
        
        // 滚动到顶部
        tvLogContent.scrollTo(0, 0)
        
        com.carlife.wireless.util.LogUtils.i(TAG, "Displaying log file: ${logFile.name} (${content.length} chars)")
    }

    /**
     * 分享当前选中的日志文件
     */
    private fun shareCurrentLog() {
        val position = spinnerLogFiles.selectedItemPosition
        if (position < 0 || position >= logFiles.size) {
            Toast.makeText(this, "请先选择日志文件", Toast.LENGTH_SHORT).show()
            return
        }

        val logFile = logFiles[position]
        if (!logFile.exists()) {
            Toast.makeText(this, "日志文件不存在", Toast.LENGTH_SHORT).show()
            return
        }

        try {
            val uri = androidx.core.content.FileProvider.getUriForFile(
                this,
                "${packageName}.fileprovider",
                logFile
            )

            val shareIntent = Intent(Intent.ACTION_SEND).apply {
                type = "text/plain"
                putExtra(Intent.EXTRA_STREAM, uri)
                putExtra(Intent.EXTRA_SUBJECT, "CarLife Wireless 日志 - ${logFile.name}")
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            }

            startActivity(Intent.createChooser(shareIntent, "分享日志文件"))
            
            com.carlife.wireless.util.LogUtils.i(TAG, "Sharing log file: ${logFile.name}")
        } catch (e: Exception) {
            Toast.makeText(this, "分享失败: ${e.message}", Toast.LENGTH_LONG).show()
            com.carlife.wireless.util.LogUtils.e(TAG, e, "分享日志文件失败")
        }
    }

    /**
     * 创建菜单
     */
    override fun onCreateOptionsMenu(menu: android.view.Menu): Boolean {
        menuInflater.inflate(R.menu.log_viewer_menu, menu)
        return true
    }

    /**
     * 处理菜单项点击
     */
    override fun onOptionsItemSelected(item: android.view.MenuItem): Boolean {
        return when (item.itemId) {
            R.id.action_clear_all_logs -> {
                // 清空所有日志
                androidx.appcompat.app.AlertDialog.Builder(this)
                    .setTitle("清空所有日志")
                    .setMessage("确定要清空所有日志文件吗？此操作不可撤销。")
                    .setPositiveButton("确定") { _, _ ->
                        val success = LogFileManager.clearAllLogs(this)
                        if (success) {
                            Toast.makeText(this, "所有日志已清空", Toast.LENGTH_SHORT).show()
                            loadLogFiles()
                        } else {
                            Toast.makeText(this, "清空日志失败", Toast.LENGTH_SHORT).show()
                        }
                    }
                    .setNegativeButton("取消", null)
                    .show()
                true
            }
            else -> super.onOptionsItemSelected(item)
        }
    }
}
