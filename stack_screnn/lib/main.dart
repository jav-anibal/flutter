import 'package:flutter/material.dart';
import 'package:stack_screnn/screens/stack-screens.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Stack Screen App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/stack': (context) => const StackScreens(),
      },
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/stack');
          },
          child: const Text("Ir a StackScreen"),
        ),
      ),
    );
  }
}
