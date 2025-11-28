import 'package:flutter/material.dart';

class CheckboxColor extends StatefulWidget {

  @override
  State<CheckboxColor> createState() => _CheckboxColorState();
}


class _CheckboxColorState extends State<CheckboxColor> {

  List<bool> checked = [false, false, false, false];
  Map<int, Color> colors = {
    0: Colors.yellow,
    1: Colors.red,
    2: Colors.cyan,
    3: Colors.deepPurple
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(" Colors Screen"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
              value: checked[0] ,
              onChanged: (bool? value){
                setState(() {
                  checked[0] = value ?? false;
                });
              }
            )

          ],
        ),
      ),
    );

  }


}