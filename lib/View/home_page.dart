import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protectora de Animales',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Protectora de Animales'),
      ),
      body: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '¡Bienvenidos a [Nombre de la Protectora]!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                onPressed: () {
                  // Navegar a la página de Instagram
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.facebook),
                onPressed: () {
                  // Navegar a la página de Facebook
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.globe),
                onPressed: () {
                  // Navegar a la página web
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: CustomButton(text: 'Adopciones', onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AdopcionesScreen()),
              );
            }),
          ),
          Expanded(
            child: CustomButton(text: 'Historias', onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HistoriasScreen()),
              );
            }),
          ),
          Expanded(
            child: CustomButton(text: 'Voluntariado', onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VoluntariadoScreen()),
              );
            }),
          ),
          Expanded(
            child: CustomButton(text: 'Donaciones', onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DonacionesScreen()),
              );
            }),
          ),
          Expanded(
            child: CustomButton(text: 'Contacto', onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactoScreen()),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 18),
          minimumSize: const Size.fromHeight(60), // Ajusta el tamaño mínimo del botón
        ),
      ),
    );
  }
}

class AdopcionesScreen extends StatelessWidget {
  const AdopcionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adopciones'),
      ),
      body: const Center(
        child: Text('Pantalla de Adopciones'),
      ),
    );
  }
}

class VoluntariadoScreen extends StatelessWidget {
  const VoluntariadoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voluntariado'),
      ),
      body: const Center(
        child: Text('Pantalla de Voluntariado'),
      ),
    );
  }
}

class HistoriasScreen extends StatelessWidget {
  const HistoriasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historias'),
      ),
      body: const Center(
        child: Text('Pantalla de Historias'),
      ),
    );
  }
}

class ContactoScreen extends StatelessWidget {
  const ContactoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
      ),
      body: const Center(
        child: Text('Pantalla de Contacto'),
      ),
    );
  }
}

class DonacionesScreen extends StatelessWidget {
  const DonacionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donaciones'),
      ),
      body: const Center(
        child: Text('Pantalla de Donaciones'),
      ),
    );
  }
}
