import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class prueba extends StatefulWidget {
  @override
  _pruebaState createState() => _pruebaState();
}

class _pruebaState extends State<prueba> {
  String id;
  final db = Firestore.instance;
  final _fromKey = GlobalKey<FormState>();
  String title;
  String subtitle;
  String ingredientes;
  String receta;
  String productId;
  var uuid = Uuid();

  TextFormField buildTextFormField() {
    return TextFormField(
      style: TextStyle(height: 1, color: Colors.red, fontSize: 30),
      decoration: InputDecoration(
        hintText: 'title',
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
      },
      onSaved: (value) => title = value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Form(
            key: _fromKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 25),
                buildTextFormField(),
                Container(
                  padding: EdgeInsets.only(right: 90, top: 10, bottom: 20),
                  child: Image(
                    image: AssetImage('assets/comida.jpg'),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'subtitle',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                  },
                  onSaved: (value) => subtitle = value,
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'ingredientes',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  onChanged: (value){
                    if(value.isNotEmpty){
                      return null;
                    }
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                  },
                  onSaved: (value) => ingredientes = value,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'receta',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                  },
                  onSaved: (value) => receta = value,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: createData,
                child: Text("create"),
              ),
              RaisedButton(
                onPressed: id != null ? readData : null,
                child: Text("read"),
              )
            ],
          ),
          StreamBuilder<QuerySnapshot>(
            stream: db.collection('recetas').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                    children: snapshot.data.documents
                        .map((doc) => buildItem(doc))
                        .toList());
              } else {
                return SizedBox();
              }
            },
          )
        ],
      ),
    );
  }

  void createData() async {
    if (_fromKey.currentState.validate()) {
      _fromKey.currentState.save();
      DocumentReference ref = await db.collection('recetas').add({
        'title': '$title',
        'subtitle': '$subtitle',
        'ingredientes': '$ingredientes',
        'receta': '$receta',
        'productId' : uuid.v4()
      });
      setState(() {
        id = ref.documentID;
      });
    }
  }

  void readData() async {
    DocumentSnapshot snapshot =
        await db.collection('recetas').document(id).get();
    print(snapshot.data['title']);
  }

  Card buildItem(DocumentSnapshot doc) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('title : ${doc.data['title']}'),
            Text('title : ${doc.data['subtitle']}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () => updateData(doc),
                  child: Text("Update data"),
                ),
                FlatButton(
                  onPressed: () => deleteData(doc),
                  child: Text("delete"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  updateData(DocumentSnapshot doc) async {
    await db
        .collection('recetas')
        .document(doc.documentID)
        .updateData({'subtitle': 'caca'});
  }

  deleteData(DocumentSnapshot doc) async {
    await db.collection('recetas').document(doc.documentID).delete();
    setState(() {
      id = null;
    });
  }

  String randomSubtitle() {
    final randomNumber = Random().nextInt(4);
    String subtitle;
    switch (randomNumber) {
      case 1:
        subtitle = 'like and subscribe';
        break;
      case 2:
        subtitle = 'Twitter @pepito';
        break;
      case 3:
        subtitle = 'patreon in the description';
        break;
      default:
        subtitle = 'leave a comment';
    }
    return subtitle;
  }
}
