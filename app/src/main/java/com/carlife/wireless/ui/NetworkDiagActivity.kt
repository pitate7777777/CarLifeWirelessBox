package com.carlife.wireless.ui

import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.carlife.wireless.databinding.ActivityNetworkDiagBinding
import com.carlife.wireless.util.ErrorTracker
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.NetworkDiagnostics
import com.carlife.wireless.util.SettingsManager
import kotlinx.coroutines.*

/**
 * 网络诊断 Activity
 *
 * 提供可视化的网络诊断界面：
 * - 一键诊断所有检查项
 * - 实时显示检测进度
 * - 彩色状态指示
 * - 详细建议
 */
class NetworkDiagActivity : AppCompatActivity() {

    companion object {
        private const val TAG = "NetworkDiagActivity"
    }

    private lateinit var binding: ActivityNetworkDiagBinding
    private var isRunning = false
    private val scope = CoroutineScope(Dispatchers.Main + SupervisorJob())

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityNetworkDiagBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // 设置工具栏
        setSupportActionBar(binding.toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        binding.toolbar.setNavigationOnClickListener { finish() }

        setupListeners()
        updatePhoneBIp()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }

    override fun onDestroy() {
        super.onDestroy()
        scope.cancel()
    }

    private fun setupListeners() {
        binding.btnStartDiag.setOnClickListener {
            if (!isRunning) {
                startDiagnostics()
            }
        }

        binding.btnQuickCheck.setOnClickListener {
            if (!isRunning) {
                startQuickCheck()
            }
        }

        binding.btnGenerateReport.setOnClickListener {
            generateReport()
        }
    }

    private fun updatePhoneBIp() {
        val ip = getPhoneBIp()
        binding.etPhoneBIp.setText(ip)
    }

    private fun getPhoneBIp(): String {
        return SettingsManager.getPhoneBIp(this)
    }

    /**
     * 在诊断结果末尾追加错误统计
     */
    private fun appendErrorStats() {
        val stats = ErrorTracker.getErrorStats()
        val total = ErrorTracker.getTotalErrors()
        if (total == 0) return

        val current = binding.tvDiagResult.text.toString()
        val sb = StringBuilder(current)
        sb.appendLine()
        sb.appendLine("═══ 错误统计 ═══")
        sb.appendLine("总错误数: $total")
        stats.forEach { (type, count) ->
            if (count > 0) sb.appendLine("  ${type.label}: $count 次")
        }

        // 最近 3 条错误
        val recent = ErrorTracker.getRecentErrors(3)
        if (recent.isNotEmpty()) {
            sb.appendLine()
            sb.appendLine("最近错误:")
            recent.forEach { sb.appendLine("  ${it.format()}") }
        }

        sb.appendLine()
        sb.appendLine("💡 点击「生成报告」可保存完整诊断报告")

        binding.tvDiagResult.text = sb.toString()
    }

    /**
     * 生成并保存诊断报告
     */
    private fun generateReport() {
        try {
            val file = ErrorTracker.saveReportToFile(this)
            if (file != null) {
                Toast.makeText(this, "报告已保存: ${file.name}", Toast.LENGTH_LONG).show()

                // 尝试分享报告
                try {
                    val uri = androidx.core.content.FileProvider.getUriForFile(
                        this, "${packageName}.fileprovider", file
                    )
                    val shareIntent = android.content.Intent(android.content.Intent.ACTION_SEND).apply {
                        type = "text/plain"
                        putExtra(android.content.Intent.EXTRA_STREAM, uri)
                        putExtra(android.content.Intent.EXTRA_SUBJECT, "CarLife 诊断报告")
                        addFlags(android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION)
                    }
                    startActivity(android.content.Intent.createChooser(shareIntent, "分享诊断报告"))
                } catch (e: Exception) {
                    LogUtils.w(TAG, "分享报告失败: ${e.message}")
                }
            } else {
                Toast.makeText(this, "保存报告失败", Toast.LENGTH_SHORT).show()
            }
        } catch (e: Exception) {
            Toast.makeText(this, "生成报告失败: ${e.message}", Toast.LENGTH_SHORT).show()
            LogUtils.e(TAG, e, "生成诊断报告失败")
        }
    }

    /**
     * 完整诊断
     */
    private fun startDiagnostics() {
        val phoneBIp = binding.etPhoneBIp.text.toString().trim()
        if (phoneBIp.isEmpty()) {
            Toast.makeText(this, "请输入手机 B 的 IP 地址", Toast.LENGTH_SHORT).show()
            return
        }

        isRunning = true
        binding.btnStartDiag.isEnabled = false
        binding.btnQuickCheck.isEnabled = false
        binding.progressDiag.visibility = View.VISIBLE
        binding.tvDiagStatus.text = "正在诊断..."
        binding.tvDiagResult.text = ""
        binding.tvDiagSummary.text = ""

        scope.launch(Dispatchers.IO) {
            try {
                // 分步执行并更新 UI
                withContext(Dispatchers.Main) { binding.tvDiagStatus.text = "① 检查 WiFi 状态..." }
                delay(300)

                val result = NetworkDiagnostics.runDiagnostics(this@NetworkDiagActivity, phoneBIp, 2000)

                withContext(Dispatchers.Main) {
                    binding.tvDiagResult.text = result.toText()
                    binding.tvDiagSummary.text = result.toSummary()

                    // 设置摘要颜色
                    val color = when {
                        result.allPortsOpen -> 0xFF4CAF50.toInt() // 绿色
                        result.pingReachable -> 0xFFFF9800.toInt() // 橙色
                        else -> 0xFFF44336.toInt() // 红色
                    }
                    binding.tvDiagSummary.setTextColor(color)

                    isRunning = false
                    binding.btnStartDiag.isEnabled = true
                    binding.btnQuickCheck.isEnabled = true
                    binding.progressDiag.visibility = View.GONE
                    binding.tvDiagStatus.text = "诊断完成"

                    LogUtils.i(TAG, "Diagnostics completed: ${result.toSummary()}")

                    // 追加错误统计信息
                    appendErrorStats()
                }
            } catch (e: Exception) {
                withContext(Dispatchers.Main) {
                    binding.tvDiagStatus.text = "诊断失败: ${e.message}"
                    isRunning = false
                    binding.btnStartDiag.isEnabled = true
                    binding.btnQuickCheck.isEnabled = true
                    binding.progressDiag.visibility = View.GONE
                }
                LogUtils.e(TAG, e, "Diagnostics failed")
            }
        }
    }

    /**
     * 快速端口检测
     */
    private fun startQuickCheck() {
        val phoneBIp = binding.etPhoneBIp.text.toString().trim()
        if (phoneBIp.isEmpty()) {
            Toast.makeText(this, "请输入手机 B 的 IP 地址", Toast.LENGTH_SHORT).show()
            return
        }

        isRunning = true
        binding.btnStartDiag.isEnabled = false
        binding.btnQuickCheck.isEnabled = false
        binding.progressDiag.visibility = View.VISIBLE
        binding.tvDiagStatus.text = "快速检测端口..."
        binding.tvDiagResult.text = ""
        binding.tvDiagSummary.text = ""

        scope.launch(Dispatchers.IO) {
            try {
                val results = NetworkDiagnostics.checkCarWithPorts(phoneBIp, 1500)
                val openCount = results.count { it.isOpen }
                val totalCount = results.size

                val sb = StringBuilder()
                sb.appendLine("🔌 CarWith 端口快速检测")
                sb.appendLine("目标: $phoneBIp")
                sb.appendLine()
                for (r in results) {
                    val icon = if (r.isOpen) "✅" else "❌"
                    val latency = if (r.latencyMs >= 0) " (${r.latencyMs}ms)" else ""
                    sb.appendLine("  ${r.port} (${r.name}): $icon ${if (r.isOpen) "已监听" else "未监听"}$latency")
                }
                sb.appendLine()
                sb.appendLine("汇总: $openCount/$totalCount 端口已监听")

                if (openCount < totalCount) {
                    sb.appendLine()
                    sb.appendLine("💡 请在手机 B 上：")
                    sb.appendLine("  打开 CarWith → CarLife 连接 → 无线连接")
                }

                withContext(Dispatchers.Main) {
                    binding.tvDiagResult.text = sb.toString()

                    val summaryText = if (openCount == totalCount) {
                        "✅ CarWith 已就绪 ($openCount/$totalCount)"
                    } else {
                        "⚠️ CarWith 未就绪 ($openCount/$totalCount)"
                    }
                    binding.tvDiagSummary.text = summaryText

                    val color = if (openCount == totalCount) 0xFF4CAF50.toInt() else 0xFFFF9800.toInt()
                    binding.tvDiagSummary.setTextColor(color)

                    isRunning = false
                    binding.btnStartDiag.isEnabled = true
                    binding.btnQuickCheck.isEnabled = true
                    binding.progressDiag.visibility = View.GONE
                    binding.tvDiagStatus.text = "快速检测完成"
                }
            } catch (e: Exception) {
                withContext(Dispatchers.Main) {
                    binding.tvDiagStatus.text = "检测失败: ${e.message}"
                    isRunning = false
                    binding.btnStartDiag.isEnabled = true
                    binding.btnQuickCheck.isEnabled = true
                    binding.progressDiag.visibility = View.GONE
                }
            }
        }
    }
}
