import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAP'),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
        ],
      ),
    );
  }
}
