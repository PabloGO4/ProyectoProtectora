import 'package:flutter/material.dart';
import 'widgets/home_widgets.dart'; // Asegúrate de que este archivo contenga la función buildAlternatingMenuItem
import 'adoptar_animales_page.dart'; // Página para "Adoptar animales"
import 'animales_perdidos_page.dart'; // Página para "Animales perdidos"
import 'nuestros_servicios_page.dart'; // Página para "Nuestros servicios"
import 'contacto_page.dart'; // Página para "Contacto"
import 'colabora_page.dart'; // Página para "Donaciones"

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "[nombre_protectora]",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFD0A659),
      ),
      drawer: buildDrawer(context), // Asegúrate de tener un Drawer si lo necesitas
      body: ListView(
        children: [
          buildAlternatingMenuItem(
            context,
              "Adoptar animales",
              'assets/images/adoptar_animales.jpg',
              0,
              () {
                // Navega a la página de "Adoptar animales" con filtros por defecto
                Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => AdoptarAnimalesPage(
      nombreProtectora: '[Nombre Protectora]',
    ),
  ),
);

          },
        ),
          buildAlternatingMenuItem(
            context,
            "Animales perdidos",
            'assets/images/animales_perdidos.webp',
            1,
            () {
              // Navega a la página de "Animales perdidos"
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnimalesPerdidosPage()),
              );
            },
          ),
          buildAlternatingMenuItem(
            context,
            "Nuestros servicios",
            'assets/images/nuestros_servicios.jpg',
            2,
            () {
              // Navega a la página de "Nuestros servicios"
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NuestrosServiciosPage()),
              );
            },
          ),
          buildAlternatingMenuItem(
            context,
            "Contacto",
            'assets/images/contacto.jpg',
            3,
            () {
              // Navega a la página de "Contacto"
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactoPage()),
              );
            },
          ),
          buildAlternatingMenuItem(
            context,
            "Colabora",  // Cambiado a "Colabora"
            'assets/images/colabora.jpg',  // Asegúrate de tener una imagen adecuada para "Colabora"
            4,  // Ajusta el índice si es necesario
            () {
              // Navega a la página de "Colabora"
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColaboraPage()),  // Cambia a la nueva página
              );
            },
          ),
        ],
      ),
    );
  }
}
// Función buildAlternatingMenuItem para generar los botones del menú
Widget buildAlternatingMenuItem(
  BuildContext context,
  String title,
  String imagePath,
  int index,
  VoidCallback onTap,
) {
  bool isLeftAligned = index % 2 == 0;

  return GestureDetector(
    onTap: onTap, // Acción cuando se presiona el botón
    child: Container(
      margin: EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Row(
            mainAxisAlignment: isLeftAligned ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}