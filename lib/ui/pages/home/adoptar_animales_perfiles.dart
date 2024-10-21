import 'package:flutter/material.dart';
import 'perfil_animal_page.dart'; // Importa la página de perfil del animal

class AdoptarAnimalesPage extends StatelessWidget {
  final String nombreProtectora;

  AdoptarAnimalesPage({required this.nombreProtectora});

  final List<Map<String, String>> animales = [
    {
      "nombre": "Luna",
      "imagen": 'assets/images/Luna.png',
      "ubicacion": "Madrid, España",
      "raza": "Husky",
      "sexo": "Hembra",
      "fecha_nacimiento": "02-12-2022",
      "vacunado": "Sí",
      "altura": "60 cm",
      "peso": "25 kg",
      "historia": "Luna es una perrita muy cariñosa y juguetona..."
    },
    {
      "nombre": "Max",
      "imagen": 'assets/images/Max.png',
      "ubicacion": "Alicante, España",
      "raza": "Golden Retriever",
      "sexo": "Macho",
      "fecha_nacimiento": "15-05-2021",
      "vacunado": "Sí",
      "altura": "70 cm",
      "peso": "30 kg",
      "historia": "Max es un perro muy amigable y le encanta jugar con niños..."
    },
    {
      "nombre": "Mía",
      "imagen": 'assets/images/Mia.png',
      "ubicacion": "Sevilla, España",
      "raza": "Pastor Alemán",
      "sexo": "Hembra",
      "fecha_nacimiento": "10-08-2020",
      "vacunado": "No",
      "altura": "55 cm",
      "peso": "28 kg",
      "historia": "Mía es una perra llena de energía y siempre lista para aventuras..."
    },
    {
      "nombre": "Rocky",
      "imagen": 'assets/images/Rocky.png',
      "ubicacion": "Madrid, España",
      "raza": "Bulldog Francés",
      "sexo": "Macho",
      "fecha_nacimiento": "01-03-2021",
      "vacunado": "Sí",
      "altura": "35 cm",
      "peso": "14 kg",
      "historia": "Rocky es un perro muy cariñoso al que le encanta estar con la familia..."
    },
    {
      "nombre": "Simba",
      "imagen": 'assets/images/Simba.png',
      "ubicacion": "Barcelona, España",
      "raza": "Cocker Spaniel",
      "sexo": "Macho",
      "fecha_nacimiento": "23-09-2019",
      "vacunado": "Sí",
      "altura": "40 cm",
      "peso": "18 kg",
      "historia": "Simba es un perro leal y muy protector..."
    },
    {
      "nombre": "Oliver",
      "imagen": 'assets/images/Oliver.png',
      "ubicacion": "Valencia, España",
      "raza": "Shar Pei",
      "sexo": "Macho",
      "fecha_nacimiento": "12-07-2021",
      "vacunado": "Sí",
      "altura": "50 cm",
      "peso": "22 kg",
      "historia": "Oliver es un perro tranquilo que disfruta de largos paseos..."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          nombreProtectora,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFD0A659),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // Acción cuando se presiona el botón de filtro
              showFilterDialog(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16), // Espacio debajo del AppBar
            Center(
              child: Text(
                'Adopciones',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Mostrar dos columnas
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: animales.length,
                itemBuilder: (context, index) {
                  final animal = animales[index];
                  return GestureDetector(
                    onTap: () {
                      // Navega a la página de perfil del animal
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PerfilAnimalPage(animal: animal),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(animal['imagen'] ?? 'assets/images/default.png'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          animal['nombre'] ?? 'Desconocido',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 16,
                            ),
                            SizedBox(width: 4),
                            Text(
                              animal['ubicacion'] ?? 'Ubicación no disponible',
                              style: TextStyle(fontSize: 12, color: Colors.redAccent),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Función para mostrar el diálogo de filtro
  void showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String provinciaSeleccionada = 'Todas';
        String tipoAnimal = 'Todos';
        String genero = 'Todos';
        RangeValues edadRango = RangeValues(0, 20);

        return AlertDialog(
          title: Text("Filtrar Animales"),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Provincia"),
                DropdownButton<String>(
                  value: provinciaSeleccionada,
                  items: <String>['Todas', 'Madrid', 'Barcelona', 'Valencia', 'Sevilla']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // Actualiza la provincia seleccionada
                  },
                ),
                SizedBox(height: 16),
                Text("Tipo de Animal"),
                DropdownButton<String>(
                  value: tipoAnimal,
                  items: <String>['Todos', 'Perro', 'Gato']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // Actualiza el tipo de animal seleccionado
                  },
                ),
                SizedBox(height: 16),
                Text("Género"),
                DropdownButton<String>(
                  value: genero,
                  items: <String>['Todos', 'Macho', 'Hembra']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // Actualiza el género seleccionado
                  },
                ),
                SizedBox(height: 16),
                Text("Rango de Edad"),
                RangeSlider(
                  values: edadRango,
                  min: 0,
                  max: 20,
                  divisions: 20,
                  labels: RangeLabels(
                    '${edadRango.start.round()} años',
                    '${edadRango.end.round()} años',
                  ),
                  onChanged: (RangeValues values) {
                    // Actualiza el rango de edad seleccionado
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cerrar"),
            ),
            TextButton(
              onPressed: () {
                // Aplica los filtros
                Navigator.of(context).pop();
              },
              child: Text("Aplicar Filtros"),
            ),
          ],
        );
      },
    );
  }
}