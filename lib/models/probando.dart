import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Recetas {
  String productId;
  String title;
  String subtitle;
  String ingredientes;

  Recetas({this.title, this.subtitle, this.ingredientes, this.productId});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subtitle': subtitle,
      'ingredientes': ingredientes,
      'productId': productId
    };
  }

  static Recetas fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Recetas(
        title: map['title'],
        subtitle: map['subtitle'],
        ingredientes: map['ingredientes'],
        productId: map['productId']);
  }

  Recetas.fromFirestore(Map<String, dynamic> firestore)
      : title = firestore['title'],
        subtitle = firestore['subtitle'],
        ingredientes = firestore['ingredientes'],
        productId = firestore['productId'];
}
