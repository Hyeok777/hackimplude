package com.example.impludehack

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
   private val CHANNEL = "com.example.impludehack/env"

   override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
      super.configureFlutterEngine(flutterEngine)
      MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
         if (call.method == "getOpenAiApiKey") {
            val apiKey = BuildConfig.OPENAI_API_KEY
            result.success(apiKey)
         } else {
            result.notImplemented()
         }
      }
   }
}
