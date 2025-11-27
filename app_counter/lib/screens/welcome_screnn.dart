import 'package:flutter/material.dart';

class WelcomeScrenn extends StatefulWidget {
  const WelcomeScrenn({super.key});

  @override
  State<WelcomeScrenn> createState() => _WelcomeScrennState();
}

class _WelcomeScrennState extends State<WelcomeScrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List'),
        actions:
        [IconButton
          (onPressed: (){
        Navigator.pushNamed(context, '/counter');
      }, icon: const Icon(Icons.arrow_forward))], ),
      body: Center(),
    );
  }
}
