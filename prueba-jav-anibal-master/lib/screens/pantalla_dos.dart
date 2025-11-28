import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TERRAIN'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla_tres');
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),

                  child: Row(
                    children: [
                      Container(width: 50, height: 50, color: Colors.yellow),
                      const SizedBox(width: 8),
                      Expanded(child: Text('Desert')),
                      Checkbox(value: false, onChanged: (value) {}),

                    ],

                  )

                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      Container(width: 50, height: 50, color: Colors.green),
                      const SizedBox(width: 8),
                      Expanded(child: Text('Rock')),
                      Checkbox(value: false, onChanged: (value) {}),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      Container(width: 50, height: 50, color: Colors.blue),
                      const SizedBox(width: 8),
                      Expanded(child: Text('Winter')),
                      Checkbox(value: false, onChanged: (value) {}),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      Container(width: 50, height: 50, color: Colors.blueGrey),
                      const SizedBox(width: 8),
                      Expanded(child: Text('Forest')),
                      Checkbox(value: false, onChanged: (value) {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
