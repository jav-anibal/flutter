import 'package:colors_screen/screen/checkbox_color_screen.dart';
import 'package:flutter/material.dart';

void main() {
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // opcional, quita la etiqueta "debug"
      title: 'Demo Checkbox',
      home: const CheckboxColorScreen(), // <- aquí indicas la pantalla principal

    );
  }



}




