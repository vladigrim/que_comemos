import 'package:flutter/material.dart';

class RowStyles extends StatefulWidget {
  @override
  RowStylesState createState() => RowStylesState();
}

class RowStylesState extends State<RowStyles> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          rowTiles(title: "comidas simples",),rowTiles(title: "comidas al horno",),rowTiles(title: "Comidas gourmet"),rowTiles(title: "Comidas rapidas"), rowTiles(title: "Comidas Economicas",),
        ],
      ),
    );
  }
}


class rowTiles extends StatelessWidget {

  String title;

  rowTiles({this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                borderRadius:
                new BorderRadius.all(new Radius.circular(50.0)),
                image: DecorationImage(
                    image: AssetImage('assets/comida.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: 100,
            child: Text(
              this.title,
              style: TextStyle(
                fontSize: 20,
              ),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

