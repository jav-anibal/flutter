import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('SIZE'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla_dos');
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.all(4),
                    color: Colors.blue,
                    child: const Center(
                      child: Text('1', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.all(4),
                    color: Colors.blue,
                    child: const Center(
                      child: Text('2', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.all(4),
                    color: Colors.blue,
                    child: const Center(
                      child: Text('3', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.all(4),
                    color: Colors.blue,
                    child: const Center(
                      child: Text('4', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.all(4),
                    color: Colors.blue,
                    child: const Center(
                      child: Text('5', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.all(4),
                    color: Colors.blue,
                    child: const Center(
                      child: Text('6', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.all(4),
                    color: Colors.blue,
                    child: const Center(
                      child: Text('7', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.all(4),
                    color: Colors.blue,
                    child: const Center(
                      child: Text('8', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.all(4),
                    color: Colors.blue,
                    child: const Center(
                      child: Text('9', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 25),
          Slider(value: 3, min: 1, max: 5, onChanged: null),
          const SizedBox(height: 30),
        ],
      ),
    );




  }
}
