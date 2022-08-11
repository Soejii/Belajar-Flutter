import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "");
  bool isOn = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('nama', controller.text);
    pref.setBool('ison', isOn);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('nama') ?? "No name";
  }

  Future<bool> getIsOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('ison') ?? "No data";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shared Prefences'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
            ),
            Switch(
                value: isOn,
                onChanged: (newValue) {
                  setState(() {
                    isOn = newValue;
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  saveData();
                },
                child: Text('Save')),
            ElevatedButton(
                onPressed: () {
                  getNama().then((s) {
                    controller.text = s;
                    setState(() {});
                  });
                  getIsOn().then((value) {
                    isOn = value;
                    setState(() {
                      
                    });
                  });
                },
                child: Text('Load')),
          ],
        )),
      ),
    );
  }
}
