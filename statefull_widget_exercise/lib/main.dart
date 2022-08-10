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
  int number = 0;

  void ResetNumber() {
    setState(() {
      number = 0;
    });
  }

  void tekanTombol() {
    setState(() {
      number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number.toString(),
              style: TextStyle(fontSize: 10 + number.toDouble()),
            ),
            ElevatedButton(
              child: Text("Tambah"),
              onPressed: tekanTombol,
            ),
            ElevatedButton(onPressed: ResetNumber, child: Text("Reset"))
          ],
        )),
      ),
    );
  }
}
