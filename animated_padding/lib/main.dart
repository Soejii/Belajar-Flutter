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
  double myPadding = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Padding'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(myPadding),
                          child: Container(color: Colors.red)),
                    ),
                    Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(myPadding),
                          child: Container(color: Colors.green)),
                    ),
                  ],
                ),
                flex: 1,
              ),
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(myPadding),
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  myPadding = 20;
                                });
                              },
                              child: Container(color: Colors.blue))),
                    ),
                    Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(myPadding),
                          child: Container(color: Colors.amber)),
                    ),
                  ],
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
