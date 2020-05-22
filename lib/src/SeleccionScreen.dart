import 'package:flutter/material.dart';
import 'RecetasTiles.dart';
import 'RowTiles.dart';


class SeleccionScreen extends StatefulWidget {
   String title;

  SeleccionScreen({this.title});


  @override
  _SeleccionScreenState createState() => _SeleccionScreenState();
}

AssetImage assetImage = AssetImage('assets/comida.jpg');

class _SeleccionScreenState extends State<SeleccionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
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
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                  this.widget.title,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                RowStyles(),
                Container(
                  padding: EdgeInsets.only(right: 190, top: 10),
                  child: Text(
                    "Recomendaciones",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Expanded(child: RecetasTile()),
              ],
            )));
  }
}