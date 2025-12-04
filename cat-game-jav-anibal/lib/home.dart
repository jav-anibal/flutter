/*
[] TODO: Añadir los elementos para desarrollar la interfaz sin estilos.
[] TODO: Añadir estilos para que la interfaz sea identica a la reflejada en la
    documentación.
[] TODO: Estilo de los campos de entrada cambian cuando tienen el foco. 
[] TODO: Añadir para el primer campo de entrada la validación. Su valor debe tener entre 
    3 y 8 caracteres. El teclado a mostrar es acorde con los datos de entrada.
[] TODO: Añadir para el segundo campo de entrada la validación. Su valor debe tener entre 
    3 y 8 caracteres. El teclado a mostrar es acorde con los datos de entrada.
[] TODO: Añadir para el tercer campo de entrada la validación. La edad introducida
    debe estar comprendida entre 18 y 100 ambos inclusive. 
    El teclado a mostrar es acorde con los datos de entrada.
[] TODO: Añadir funcionalidad al botón.
[] TODO: Mi código es legible y está bien comentando.
 */

import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  //  final _formKey = GlobalKey(<FormState>());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 250,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(), // -> muestra borde cuadrado
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.cyan)
                  // ),
                  focusedBorder: UnderlineInputBorder(
                    // -> PINTA UNA LINEA -> CUANDO SE VA A ESCRIBIR
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ), // -> LA LÍNEA
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(), // -> muestra borde cuadrado
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.cyan)
                  // ),
                  focusedBorder: UnderlineInputBorder(
                    // -> PINTA UNA LINEA -> CUANDO SE VA A ESCRIBIR
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ), // -> LA LÍNEA
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: 60,
              height: 40,

              child: ElevatedButton.icon(

                onPressed: () {
               Navigator.pushNamed(context, '/');
              },
               style: ElevatedButton.styleFrom(
                 padding: EdgeInsets.zero,
                 backgroundColor: Colors.red,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(12)
                 )
               ),

              icon: Icon(Icons.gamepad),
                label: Text('Go!!', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
            )


          ],
        ),
      ),
    );
  }
}
