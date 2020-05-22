import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:que_comemos/models/probando.dart';
import 'package:que_comemos/src/ingredientes.dart';
import 'package:que_comemos/src/prueba.dart';

class RecetasScreen extends StatefulWidget {

  Recetas recetas;
RecetasScreen({this.recetas});


  @override
  _RecetasScreenState createState() => _RecetasScreenState();
}

class _RecetasScreenState extends State<RecetasScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 60),
                child: RaisedButton(
                  child: Text("< VOLVER"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Icon(
                  Icons.fastfood,
                  size: 60,
                ),
              ),
            ]),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: EdgeInsets.only(left: 15),
            child: Text(
              widget.recetas.title,
              style: TextStyle(fontSize: 40, color: Colors.red),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 80, top: 10),
            child: Image(
              image: AssetImage('assets/comida.jpg'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  widget.recetas.subtitle,
                  style: TextStyle(fontSize: 23, color: Colors.red),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, right: 30),
                child: Text(
                  "porcion/es 10",
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 255, top: 25),
            child: Text(
              widget.recetas.ingredientes,
              style: TextStyle(fontSize: 23),
            ),
          ),

          Container(
            child: Column(
              children: <Widget>[
                Container(
                    alignment: AlignmentDirectional.topStart,
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      "-  2 HUEVOS",
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                    alignment: AlignmentDirectional.topStart,
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      "-  1 TAZA DE AZUCAR",
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                    alignment: AlignmentDirectional.topStart,
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      "-  75 GRAMOS DE MANTECA",
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                    alignment: AlignmentDirectional.topStart,
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      "-  1 TAZA DE CACAO(CUALQUIER MARCA)",
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                    alignment: AlignmentDirectional.topStart,
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      "-  1 TAZA DE HARINA LEUDANTE",
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            ),
          ), //LISTA DE INGREDIENTES
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: EdgeInsets.only(top: 15, left: 20),
            child: Text(
              "Preparación",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              "En un bowls poner los huevos junto con la taza de azucar y revolver bien y agregar una taza de harina leudante.\nDerretir la manteca hasta que quede liquida e integrar. Luego poner una taza de cacao.\nColocar en un molde enmantecado y enharinado la preparacion ",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => loadIngredientes()));
              },
              child: Text("Comparte tu receta"),
            ),
          )
        ],
      ),
    ));
  }
}
