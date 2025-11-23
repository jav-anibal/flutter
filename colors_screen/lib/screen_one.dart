import 'package:flutter/material.dart';

class Screen_one extends StatefulWidget {
  const Screen_one({Key? key}) : super(key: key);

  @override
  State<Screen_one> createState() => Screen_oneState();
}

class Screen_oneState extends State<Screen_one> {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Checklist'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text('Verde'),
                Checkbox(
                  value: check1,
                  onChanged: (newValue) {
                    setState(() => check1 = newValue!);
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('Amarillo'),
                Checkbox(
                  value: check2,
                  onChanged: (newValue) {
                    setState(() => check2 = newValue!);
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('Azul'),
                Checkbox(
                  value: check3,
                  onChanged: (newValue) {
                    setState(() => check3 = newValue!);
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('Rojo'),
                Checkbox(
                  value: check4,
                  onChanged: (newValue) {
                    setState(() => check4 = newValue!);
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Botón presionado');
              },
              child: const Text('GO'),
            ),
          ],
        ),
      ),
    );
  }
}