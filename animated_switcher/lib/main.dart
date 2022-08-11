import 'package:flutter/material.dart';

void main() {
  runApp(const AnimatedSwitch());
}

class AnimatedSwitch extends StatefulWidget {
  const AnimatedSwitch({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitch> createState() => _AnimatedSwitchState();
}

class _AnimatedSwitchState extends State<AnimatedSwitch> {
  bool isOn = false;

  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2), color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Switcher'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 7),
              child: myWidget,
            ),
            Switch(
                activeColor: Colors.green,
                activeTrackColor: Colors.green[150],
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red[200],
                value: isOn,
                onChanged: (newValue) {
                  isOn = newValue;
                  setState(() {
                    if (isOn) {
                      myWidget = SizedBox(
                        width: 200,
                        height: 100,
                        child: Center(
                          child: Text(
                            'SWITCH IS ON',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.green),
                          ),
                        ),
                      );
                    } else
                      myWidget = Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: Colors.red),
                      );
                    ;
                  });
                }),
          ],
        )),
      ),
    );
  }
}
