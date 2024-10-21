import 'package:flutter/material.dart';

class Animal {
  final String nombre;
  final DateTime cumpleanos; // Fecha de nacimiento
  final double altura; // En centímetros
  final String genero; // Macho o Hembra
  final bool otrosAnimales; // Puede convivir con otros animales
  final double peso; // En kilogramos
  final String sobreMi; // Descripción sobre el animal

  Animal({
    required this.nombre,
    required this.cumpleanos,
    required this.altura,
    required this.genero,
    required this.otrosAnimales,
    required this.peso,
    required this.sobreMi,
  });
}
