import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text("contoh tab bar"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.access_alarms),
                  ),
                  Tab(
                    icon: Icon(Icons.note_add_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.accessibility_new_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.account_circle_rounded),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Text("Tab 1"),
                ),
                Center(
                  child: Text("Tab 2"),
                ),
                Center(
                  child: Text("Tab 3"),
                ),
                Center(
                  child: Text("Tab 4"),
                ),
              ],
            ),
          )),
    );
  }
}
