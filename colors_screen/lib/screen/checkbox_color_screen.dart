import 'package:flutter/material.dart';

class CheckboxColorScreen extends StatefulWidget {
  const CheckboxColorScreen({super.key});

  @override
  State<CheckboxColorScreen> createState() => _CheckboxColorScreenState();
}

class _CheckboxColorScreenState extends State<CheckboxColorScreen> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: isChecked ? Colors.cyanAccent : Colors.white,


      appBar: AppBar(centerTitle: true,
        title: Text('Colores Screen',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              child: Checkbox(
                value: isChecked,
                onChanged: (bool ? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
                activeColor: Colors.cyanAccent,
              ),
            )
          ],
        ),
      ),

    );
  }

}
