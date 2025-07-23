package com.example.firstkmpapp.ui

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.firstkmpapp.Greeting
import kotlinx.datetime.Clock
import kotlinx.datetime.LocalDateTime
import kotlinx.datetime.TimeZone
import kotlinx.datetime.toLocalDateTime

@Composable
fun ComposeTestApp() {
    MaterialTheme {

        var timeAtLocation by remember { mutableStateOf("No location selected") }
        Column(
            modifier = Modifier.padding(20.dp)
        ) {
            Text(
                text = "✨ Compose Multiplatform 1.8.2",
                fontSize = 20.sp
            )
            
            Text(
                text = Greeting().greet(),
                fontSize = 16.sp,
                modifier = Modifier.padding(top = 16.dp)
            )
            
            Text(
                text = "🎯 Testing iOS 18.5 compatibility",
                fontSize = 14.sp,
                modifier = Modifier.padding(top = 16.dp)
            )

            Text(
                text = "Today's Date is ${todaysDate()}",
                fontSize = 14.sp,
                modifier = Modifier.padding(top = 16.dp)
            )

            Text(timeAtLocation)

            Button(
                onClick = { timeAtLocation  = todaysDate() }
            ){
                Text("Click me to reveal the Time. ")
            }
        }
    }
}

fun todaysDate(): String {
    fun LocalDateTime.format() = toString().substringBefore('T')

    val now = Clock.System.now()
    val zone = TimeZone.currentSystemDefault()
    return now.toLocalDateTime(zone).format()
}