import 'package:flutter/material.dart';
import 'widgets/home_widgets.dart'; // Asegúrate de que la ruta sea correcta

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView(
        children: [
          buildAlternatingMenuItem(context, "Adoptar animales", 'assets/adoptar_animales.jpg', 0),
          buildAlternatingMenuItem(context, "Animales perdidos", 'assets/animales_perdidos.jpg', 1),
          buildAlternatingMenuItem(context, "Nuestros servicios", 'assets/nuestros_servicios.jpg', 2),
          buildAlternatingMenuItem(context, "Contacto", 'assets/contacto.jpg', 3),
          buildAlternatingMenuItem(context, "Veterinarios cercanos", 'assets/veterinarios.jpg', 4),
          buildAlternatingMenuItem(context, "Donaciones", 'assets/donaciones.jpg', 5),
        ],
      ),
    );
  }
}
