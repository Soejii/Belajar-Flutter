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
          title: Text("Image"),
        ),
        body: Center(
            child: Container(
          color: Colors.black26,
          width: 200,
          height: 200,
          padding: EdgeInsets.all(3),
          child: Image(
              image: NetworkImage(
                  "https://png.pngtree.com/template/20190308/ourlarge/pngtree-clean-laundry-icon-image_63960.jpg")),
        )),
      ),
    );
  }
}
