import 'package:api_exercise/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetUsers extends StatefulWidget {
  const GetUsers({Key key}) : super(key: key);

  @override
  State<GetUsers> createState() => _GetUsersState();
}

class _GetUsersState extends State<GetUsers> {
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GET USER"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    child: Text((user != null) ? user.id : "Theres NO id"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 25, bottom: 25),
                    child:
                        Text((user != null) ? user.name : "No name available"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        User.connectToApi("2").then((value) {
                          user = value;
                          setState(() {});
                        });
                      },
                      child: Text('GET USER'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
