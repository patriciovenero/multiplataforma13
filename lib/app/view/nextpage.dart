import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
        backgroundColor: Colors.blue, // Cambia el color de fondo de la barra de navegación
      ),
      body: Center(
        child: Text(
          'Esta es la página 2.',
          style: TextStyle(
            fontSize: 24, // Cambia el tamaño de fuente
            fontWeight: FontWeight.bold, // Cambia el peso de la fuente
            color: Colors.black, // Cambia el color del texto
          ),
        ),
        // Puedes agregar más widgets y personalizar el diseño según tus necesidades
      ),
    );
  }
}
