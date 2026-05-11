package com.carlife.wireless.ui

import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.carlife.wireless.databinding.ActivityNetworkDiagBinding
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.NetworkDiagnostics
import com.carlife.wireless.util.SettingsManager
import kotlin.concurrent.thread

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
    private val handler = Handler(Looper.getMainLooper())
    private var isRunning = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityNetworkDiagBinding.inflate(layoutInflater)
        setContentView(binding.root)

        supportActionBar?.title = "网络诊断"
        supportActionBar?.setDisplayHomeAsUpEnabled(true)

        setupListeners()
        updatePhoneBIp()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
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
    }

    private fun updatePhoneBIp() {
        val ip = getPhoneBIp()
        binding.etPhoneBIp.setText(ip)
    }

    private fun getPhoneBIp(): String {
        val prefs = getSharedPreferences("carlife_settings", MODE_PRIVATE)
        return prefs.getString("phone_b_ip", Constants.IpAddress.USB_TETHERING_LOCAL)
            ?: Constants.IpAddress.USB_TETHERING_LOCAL
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

        thread {
            try {
                // 分步执行并更新 UI
                handler.post { binding.tvDiagStatus.text = "① 检查 WiFi 状态..." }
                Thread.sleep(300)

                val result = NetworkDiagnostics.runDiagnostics(this, phoneBIp, 2000)

                handler.post {
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
                }
            } catch (e: Exception) {
                handler.post {
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

        thread {
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

                handler.post {
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
                handler.post {
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
