import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:que_comemos/src/RecetasTiles.dart';
import 'package:que_comemos/src/RowTiles.dart';
import 'package:que_comemos/src/SeleccionScreen.dart';


class BebidasScreen extends StatefulWidget {


  @override
  _BebidasScreenState createState() => _BebidasScreenState();
}

AssetImage assetImage = AssetImage('assets/comida.jpg');

class _BebidasScreenState extends State<BebidasScreen> {


  @override
  Widget build(BuildContext context) {
    return SeleccionScreen(title: "bebidas",);
  }
}
