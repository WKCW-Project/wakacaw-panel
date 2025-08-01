package com.byben.wakacawpanel

import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.topjohnwu.superuser.Shell

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val kernelVer = Shell.cmd("uname -r").exec().out.joinToString("\n")
        findViewById<TextView>(R.id.kernel_info).text = "Kernel: $kernelVer"
    }
}
