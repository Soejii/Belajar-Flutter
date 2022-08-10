import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:api_exercise/get_all_user_model.dart';

class GetAllUser extends StatefulWidget {
  const GetAllUser({Key key}) : super(key: key);

  @override
  State<GetAllUser> createState() => _GetAllUserState();
}

class _GetAllUserState extends State<GetAllUser> {
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GET ALL USER"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(output),
              ElevatedButton(
                  onPressed: () {
                    GetAll.getUser('1').then((users) {
                      output = "";
                      for (var i = 0; i < users.length; i++)
                        output = output + " [ " + users[i].name + " ] ";
                      setState(() {});
                    });
                  },
                  child: Text('Get All User'))
            ],
          ),
        ),
      ),
    );
  }
}
