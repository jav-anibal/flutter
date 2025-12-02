package com.javanibal.navigator

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.navigation.NavController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.javanibal.navigator.ui.theme.NavigatorTheme

class MainActivity : ComponentActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    enableEdgeToEdge()
    setContent {
      NavigatorTheme {
        AppNavigation()
      }
    }
  }
}


@Composable
fun AppNavigation() {
  val navController = rememberNavController()

  NavHost(
    navController = navController,
    startDestination = "home"
  ) {
    composable("home") { Home(navController) }
    composable("detalle") { Detalle(navController) }
  }
}


@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun Home(navController: NavController) {
  Scaffold(
    topBar = { TopAppBar(title = { Text("Home") }) }
  ) { padding ->
    Column(modifier = Modifier.padding(padding)) {
      Text("Soy la pantalla Home")

      Button(onClick = { navController.navigate("detalle") }) {
        Text("Ir a Detalle")
      }

    }
  }
}


@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun Detalle(navController: NavController) {
  Scaffold(
  ) { padding ->
    Column(modifier = Modifier.padding(padding)) {
      Text("Soy la pantalla detalle")

      Button(onClick = { navController.popBackStack() }) {
        Text("Volver")
      }
    }
  }
}


