import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final String username;
  final String pass;

  const WelcomeScreen({
    required this.username,
    required this.pass,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text("Welcome")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Username: $username", style: const TextStyle(fontSize: 22)),
            Text("Password: $pass", style: const TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}

