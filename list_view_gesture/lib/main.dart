import 'package:flutter/material.dart';
import 'list_view_gesture/example_gestures_class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestos con Dismissible',
      initialRoute: '/',
      routes: {
        '/': (context) => ListaConGestos(),
        '/example_gestures': (context) => ExampleGesturesClass(),
      },
    );
  }
}

class ListaConGestos extends StatefulWidget {
  @override
  _ListaConGestosState createState() => _ListaConGestosState();
}

class _ListaConGestosState extends State<ListaConGestos> {
  // 1. Creamos una lista de elementos iniciales
  List<String> items = List.generate(10, (index) => "Elemento ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestos en List-View"),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.pushNamed(context, '/example_gestures');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          // 2. Envolvemos cada elemento en un Dismissible
          return Dismissible(
            key: Key(item), // clave única para identificar el widget
            direction: DismissDirection.endToStart,
            // 👆 habilitamos el gesto de derecha a izquierda

            // 3. Fondo rojo que aparece al deslizar
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.delete, color: Colors.white),
            ),

            // 4. Acción al completar el gesto
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index); // borramos el elemento de la lista
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("$item eliminado")),
              );
            },

            // 5. El contenido visible del elemento
            child: ListTile(
              title: Text(item),
            ),
          );
        },
      ),
    );
  }
}
