import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:que_comemos/models/probando.dart';
import 'package:que_comemos/screens/recetas.dart';
import 'package:que_comemos/services/services.dart';

class RecetasTile extends StatefulWidget {


  @override
  _RecetasTileState createState() => _RecetasTileState();
}

class _RecetasTileState extends State<RecetasTile> {
  @override
  Widget build(BuildContext context) {
    final recetas = Provider.of<List<Recetas>>(context);
    return ListView.builder(
        padding: EdgeInsets.only(top: 6),
        scrollDirection: Axis.horizontal,
        itemCount: recetas.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecetasScreen(recetas: recetas[index]),
                    ));
              },
              child: Container(
                padding: EdgeInsets.only(right: 10),
                child: Stack(children: <Widget>[
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/comida.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 120, left: 5),
                      child: (Text(
                        recetas[index].title,
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ))),
                  Container(
                      padding: EdgeInsets.only(top: 150, left: 5),
                      child: (Text(
                        recetas[index].subtitle,
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )))
                ]),
              ));
        });
  }
}
