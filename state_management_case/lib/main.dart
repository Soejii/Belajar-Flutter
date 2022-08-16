import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:state_management_case/application_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
              builder: (context, applicationColor, _) => Text(
                'Provider State Management',
                style: TextStyle(color: applicationColor.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context, applicationColor, _) => AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(5),
                      color: applicationColor.color),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer<ApplicationColor>(
                        builder: (context, applicationColor, _) => Text(
                              'AB',
                              style: TextStyle(color: applicationColor.color),
                            )),
                    Consumer<ApplicationColor>(
                        builder: (context, applicationColor, _) => Switch(
                            value: applicationColor.isLightBlue,
                            onChanged: (newValue) {
                              applicationColor.isLightBlue = newValue;
                            })),
                    Consumer<ApplicationColor>(
                        builder: (context, applicationColor, _) => Text(
                              'LB',
                              style: TextStyle(color: applicationColor.color),
                            )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
