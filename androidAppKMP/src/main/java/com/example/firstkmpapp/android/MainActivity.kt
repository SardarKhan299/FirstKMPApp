package com.example.firstkmpapp.android

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import com.example.firstkmpapp.ui.ComposeTestApp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            ComposeTestApp() // Using shared Compose Multiplatform UI
        }
    }
}

@Preview
@Composable
fun DefaultPreview() {
    ComposeTestApp()
}
