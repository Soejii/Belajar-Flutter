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
        appBar: AppBar(title: Text("Flexible Container")),
        body: Column(children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.amber,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.green,
              )),
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              )),
        ]),
      ),
    );
  }
}
