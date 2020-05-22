import 'package:flutter/material.dart';

class ingrediente {
  int cantidad;
  String ingredientes;

  ingrediente({this.cantidad, this.ingredientes});

// ingredientesList(List<ingrediente> lista){
//   return ingredientesList(lista)
//}




}

class loadIngredientes extends StatefulWidget {
  @override
  _loadIngredientesState createState() => _loadIngredientesState();
}

class _loadIngredientesState extends State<loadIngredientes> {
  List<ingrediente> ingredientesList;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'cantidad',
              fillColor: Colors.white,
              filled: true,
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                return null;
              }
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
            },
            onSaved: (value) => ingrediente(cantidad: value as int),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'ingredientes',
              fillColor: Colors.white,
              filled: true,
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                return null;
              }
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
            },
            onSaved: (value) => ingrediente(ingredientes: value),
          ),
//          RaisedButton(
//            onPressed: ingredientesList.add(value),
//          )
        ],
      ),
    );
  }
}
