import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];

  _MyAppState() {
    for (int i = 0; i < 15; i++) {
      widgets.add(Text(
        "Ini Text " + i.toString(),
        style: TextStyle(fontSize: 55),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List view"),
        ),
        body: ListView(children: widgets),
      ),
    );
  }
}
