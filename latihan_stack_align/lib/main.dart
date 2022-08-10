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
        appBar: AppBar(title: Text("Latihan stack dan align")),
        body: Stack(children: <Widget>[
          //Background
          Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        )),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ],
          ),
          //Listview
          ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Ini adalah text yang ada di lapisan tengah stack",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Ini adalah text yang ada di lapisan tengah stack",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Ini adalah text yang ada di lapisan tengah stack",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Ini adalah text yang ada di lapisan tengah stack",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Ini adalah text yang ada di lapisan tengah stack",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ],
              )
            ],
          ),
          //Button bottom center
          Align(
              alignment: Alignment(0, 0.9),
              child: ElevatedButton(onPressed: () {}, child: Text("Button")))
        ]),
      ),
    );
  }
}
