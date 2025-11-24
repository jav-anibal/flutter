import 'package:flutter/material.dart';

class CounterScrenn extends StatefulWidget {
  const CounterScrenn ({super.key});

  @override
  State<CounterScrenn> createState() => _CounterScrennState();
}

class _CounterScrennState extends State<CounterScrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create'), ),
    );
  }
}
