import 'package:flutter/material.dart';
import 'package:login_app/screens/login_screen.dart';
import 'package:login_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),

        // Ruta que recibe argumentos
        '/welcome': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
          return WelcomeScreen(
            username: args['user']!,
            pass: args['pass']!,
          );
        },
      },
    );
  }
}

