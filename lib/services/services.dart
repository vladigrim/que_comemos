import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:que_comemos/models/probando.dart';

class FirestoreService {
  Firestore _db = Firestore.instance;

  Future<void> saveReceta(Recetas recetas) {
    return _db
        .collection('recetas')
        .document(recetas.productId)
        .setData(recetas.toMap());
  }

  Stream<List<Recetas>> getReceta() {
    return _db.collection('recetas').snapshots().map((snapshot) => snapshot
        .documents
        .map((document) => Recetas.fromFirestore(document.data))
        .toList());
  }
}
