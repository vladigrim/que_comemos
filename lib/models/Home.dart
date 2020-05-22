import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:que_comemos/screens/Bebidas.dart';
import 'package:que_comemos/screens/Comidas_Light.dart';
import 'package:que_comemos/screens/Comidas_Saladas.dart';
import 'package:que_comemos/screens/Postres.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Icon(
              Icons.fastfood,
              size: 50,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 50),
            child: Text(
              "¿Que comemos hoy?",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                child: Card(
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComidasSaladasScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 50,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Comidas Saladas",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: Card(
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComidasLightScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 50,
                          ),
                          SizedBox(height: 30),
                          Text(
                            "Comidas Tristes",
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "By clara",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                child: Card(
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostresScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 50,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Postres",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: Card(
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BebidasScreen(),
                            ));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 50,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Bebidas",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
