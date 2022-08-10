import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan container"),
        ),
        body: Container(
          color: Colors.amberAccent,
          margin: EdgeInsets.fromLTRB(10, 10, 20, 25),
          padding: EdgeInsets.all(25),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: <Color>[Colors.red, Colors.white])),
          ),
        ),
      ),
    );
  }
}
