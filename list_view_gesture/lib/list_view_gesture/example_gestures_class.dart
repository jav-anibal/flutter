import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampleGesturesClass extends StatefulWidget {
  const ExampleGesturesClass({super.key});

  @override
  State<ExampleGesturesClass> createState() => _ExampleGesturesClassState();
}

class _ExampleGesturesClassState extends State<ExampleGesturesClass> {
  int? _selectedIndex;
  bool _isRightToLeft = false;
  double _initialDx = 0.0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onHorizontalDragStart: (details) {
              _initialDx = details.localPosition.dx;
            },
            onHorizontalDragUpdate: (details) {
              _isRightToLeft = details.delta.dx < 0;
            },
            onHorizontalDragEnd: (details) {
              if (_isRightToLeft &&
                  (_initialDx - details.localPosition.dx).abs() > 200) {
                setState(() {
                  _selectedIndex = index;
                });
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  tileColor: index == _selectedIndex
                      ? Colors.grey[200]
                      : Colors.transparent,
                  title: Text(
                    '$index',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),

                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    child: Text(
                      "Este es un párrafo de ejemplo utilizando Google Fonts. "
                          "Estoy utilizando Flutter para construir mis pequeñas aplicaciones.",
                      style: GoogleFonts.courierPrime (
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

