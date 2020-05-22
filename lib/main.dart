

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:que_comemos/models/Home.dart';
import 'package:que_comemos/services/services.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final firestoreService = FirestoreService();
    return MultiProvider(
      providers: [
          StreamProvider(create: (context)=> firestoreService.getReceta(),)
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          backgroundColor: Colors.grey,
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
