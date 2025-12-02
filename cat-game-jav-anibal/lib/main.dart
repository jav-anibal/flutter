import 'package:flutter/material.dart';
import 'package:flutter_application_cat_game/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => WelcomeScreen(),

      },
    );
  }
}
