import 'package:flutter/material.dart';

import 'grid_letter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('WORDLE (ES)')),

      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: GridLetter(),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Expanded(
                  child: createRow([
                    'Q',
                    'W',
                    'E',
                    'R',
                    'T',
                    'Y',
                    'U',
                    'I',
                    'O',
                    'P',
                  ]),
                ),
                SizedBox(height: 5),
                Expanded(
                  child: createRow([
                    'A',
                    'S',
                    'D',
                    'F',
                    'G',
                    'H',
                    'J',
                    'K',
                    'L',
                    'Ñ',
                  ]),
                ),
                SizedBox(height: 5),
                Expanded(
                  child: createRowFinal(['A', 'S', 'D', 'F', 'G', 'H', 'J']),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row createRow(List<String> letters) {
    return Row(
      children: List.generate(
        letters.length,
        (index) => Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(4.0),
            ),
            margin: EdgeInsets.only(right: 4),
            alignment: Alignment.center,
            child: Text(letters[index], style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }

  Row createRowFinal(List<String> letters) {
    return Row(
      children: List.generate(letters.length + 2, (index) {
        if (index == 0) {
          return Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(4.0),
              ),
              margin: EdgeInsets.only(right: 4),
              alignment: Alignment.center,
              child: Text('Enviar'),
            ),
          );
        } else if (index == letters.length + 1) {
          return Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(4.0),
              ),
              margin: EdgeInsets.only(right: 4),
              alignment: Alignment.center,
              child: Icon(Icons.delete_forever_sharp),
            ),
          );
        } else {
          return Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(4.0),
              ),
              margin: EdgeInsets.only(right: 4),
              alignment: Alignment.center,
              child: Text(letters[index - 1]),
            ),
          );
        }
      }),
    );
  }
}
