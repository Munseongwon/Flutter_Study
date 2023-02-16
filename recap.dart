// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';


/*class Player {
  String? name;
  Player();
}*/

void main() {
  // var nico = Player();
  // nico.name;
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Hello Flutter'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}

