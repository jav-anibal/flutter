import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ScreenOne(),
    );
  }
}

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  bool checkVerde = false;
  bool checkAmarillo = false;
  bool checkAzul = false;
  bool checkRojo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Mis Colores'),
        backgroundColor: Colors.grey[400],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: checkVerde,
                    onChanged: (v) => setState(() => checkVerde = v!),
                  ),
                  const SizedBox(width: 8),
                  const Text('Verde'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkAmarillo,
                    onChanged: (v) => setState(() => checkAmarillo = v!),
                  ),
                  const SizedBox(width: 8),
                  const Text('Amarillo'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkAzul,
                    onChanged: (v) => setState(() => checkAzul = v!),
                  ),
                  const SizedBox(width: 8),
                  const Text('Azul'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkRojo,
                    onChanged: (v) => setState(() => checkRojo = v!),
                  ),
                  const SizedBox(width: 8),
                  const Text('Rojo'),
                ],
              ),

              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print("Seleccionados: Verde=$checkVerde, Amarillo=$checkAmarillo, Azul=$checkAzul, Rojo=$checkRojo");
                  },
                  child: const Text('GO'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
