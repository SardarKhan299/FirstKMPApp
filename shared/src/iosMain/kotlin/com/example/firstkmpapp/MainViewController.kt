package com.example.firstkmpapp

import androidx.compose.ui.window.ComposeUIViewController
import com.example.firstkmpapp.ui.ComposeTestApp
import platform.UIKit.UIViewController

fun MainViewController(): UIViewController {
    return ComposeUIViewController {
        ComposeTestApp()
    }
} 