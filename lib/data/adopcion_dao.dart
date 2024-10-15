import 'package:flutter/material.dart';
import data/adopcion_dao.dart;
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/adopcion_models.dart';

class AdopcionDAO {
  final CollectionReference adopcionCollection =
      FirebaseFirestore.instance.collection('adopciones');

  // Insertar una nueva adopción
  Future<void> insertAdopcion(Adopcion adopcion) async {
    await adopcionCollection.add(adopcion.toFirestore());
  }

  // Obtener todas las adopciones
  Future<List<Adopcion>> getAdopciones() async {
    QuerySnapshot snapshot = await adopcionCollection.get();
    return snapshot.docs.map((doc) {
      return Adopcion.fromFirestore(doc.data() as Map<String, dynamic>, doc.id);
    }).toList();
  }

  // Obtener una adopción por ID
  Future<Adopcion?> getAdopcionById(String id) async {
    DocumentSnapshot doc = await adopcionCollection.doc(id).get();
    if (doc.exists) {
      return Adopcion.fromFirestore(doc.data() as Map<String, dynamic>, doc.id);
    }
    return null;
  }

  // Actualizar una adopción
  Future<void> updateAdopcion(String id, Adopcion adopcion) async {
    await adopcionCollection.doc(id).update(adopcion.toFirestore());
  }

  // Eliminar una adopción
  Future<void> deleteAdopcion(String id) async {
    await adopcionCollection.doc(id).delete();
  }
}
