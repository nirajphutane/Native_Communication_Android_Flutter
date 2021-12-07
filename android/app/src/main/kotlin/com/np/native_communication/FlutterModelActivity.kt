package com.np.native_communication

import android.content.Intent
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class FlutterModelActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "NativeCommunication").setMethodCallHandler {
            call, result -> result.success("Android")
            Log.d("Android: ", call.method)

            var intent = Intent(applicationContext, AndroidActivity::class.java)
            startActivity(intent)
            finish()
        }
    }
}
