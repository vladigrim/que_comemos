import 'package:flutter/material.dart';
import 'package:que_comemos/src/SeleccionScreen.dart';

class ComidasSaladasScreen extends StatefulWidget {
  @override
  _ComidasSaladasScreenState createState() => _ComidasSaladasScreenState();
}

class _ComidasSaladasScreenState extends State<ComidasSaladasScreen> {
  @override
  Widget build(BuildContext context) {
    return SeleccionScreen(title: "Comidas Saladas",);
  }
}
