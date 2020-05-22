import 'package:flutter/material.dart';
import 'package:que_comemos/src/RowTiles.dart';
import 'package:que_comemos/src/SeleccionScreen.dart';

class PostresScreen extends StatefulWidget {
  @override
  _PostresScreenState createState() => _PostresScreenState();
}

class _PostresScreenState extends State<PostresScreen> {
  @override
  Widget build(BuildContext context) {
    return SeleccionScreen(title: "Postres",);
  }
}