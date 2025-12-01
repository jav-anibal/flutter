import 'package:flutter/material.dart';

class StackScreens extends StatelessWidget {
  const StackScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1024,
        height: 655,
        color: Colors.black87,
        child: Stack(
          children: [
            Image.asset('assets/images/Godzilla.png', fit: BoxFit.cover),

            Positioned(
              bottom: 10,
              left: 20,
              child: Image.asset(
                'assets/images/HBO.png',
                width: 220,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),

            Positioned(
              bottom: 10,
              left: 200,
              child: Image.asset(
                'assets/images/IMAX.png',
                width: 220,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),

            Positioned(
              bottom: 0,
              left: 410,
              child: Image.asset(
                'assets/images/legendary.png',
                width: 220,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 115,
                color: Color.fromRGBO(15, 115, 188, 1),
                child: Text(
                  'BUY TICKETS',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Positioned(
              top: 210,
              left: 60,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('GODZILLA II',
                    style: TextStyle(fontSize: 50, color: Colors.blue),textAlign: TextAlign.left,),
                  Text('THE KING OF MONSTERS',
                    style: TextStyle(fontSize: 30, color: Colors.white),textAlign: TextAlign.left,),
                  SizedBox(height: 10,),

                  Text('''
   The Legendary Titan Godzilla Returns To Face His Greatest
   Challenge Yet - Three Ancient Super-Species Known As The Titans,
   Awakened and Vying For Dominance . Only Godzilla can stand
   Against Them, But To Restore Order And Save Humanity.He May
   Need The Help Of Other Legendary Creatures,Like Mythical
   Mothra And The Fiery Rodan. Prepare For A Spectacular Clash Of
   Titans As The Fate Of The World Hangs In The Balance. ''',
                    style: TextStyle(fontSize: 10, color: Colors.white),textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
