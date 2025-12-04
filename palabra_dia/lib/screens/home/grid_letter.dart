import 'package:flutter/material.dart';

class GridLetter extends StatelessWidget {
  const GridLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      children: List.generate(25, (index) {
        return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
        );
      }),
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: 5,
    );
  }
}
