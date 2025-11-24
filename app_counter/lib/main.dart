import 'package:app_counter/screens/counter_screnn.dart';
import 'package:app_counter/screens/welcome_screnn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
      ),

      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomeScrenn(),
        '/counter': (context) => CounterScrenn(),
      },
    );
  }
}
