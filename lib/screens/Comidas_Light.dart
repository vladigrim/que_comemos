import 'package:flutter/material.dart';
import 'package:que_comemos/src/SeleccionScreen.dart';

class ComidasLightScreen extends StatefulWidget {
  @override
  _ComidasLightScreenState createState() => _ComidasLightScreenState();
}

class _ComidasLightScreenState extends State<ComidasLightScreen> {
  @override
  Widget build(BuildContext context) {
    return SeleccionScreen(title: "Comidas Light",);
  }
}