package com.np.native_communication

import android.app.Activity
import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class AndroidActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        title = "Android"
        setContentView(R.layout.activity_android)

        var button = findViewById(R.id.button) as Button
        button.setOnClickListener {
            var intent = Intent(applicationContext, FlutterModelActivity::class.java)
            startActivity(intent)
            finish()
        }
    }
}