package com.example.firstkmpapp

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform