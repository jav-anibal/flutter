import 'package:flutter/material.dart';
import 'screens/pantalla_uno.dart';
import 'screens/pantalla_dos.dart';
import 'screens/pantalla_tres.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla_dos': (context) => const PantallaDos(),
        '/pantalla_tres': (context) => const PantallaTres(),
      },
    );
  }
}
