import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:api_exercise/post_result_model.dart';

class PostApi extends StatefulWidget {
  const PostApi({Key key}) : super(key: key);

  @override
  State<PostApi> createState() => _PostApiState();
}

class _PostApiState extends State<PostApi> {
  PostResult postResult = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan API'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  child: Text(
                (postResult != null) ? postResult.id : "Tidak ada id",
                style: TextStyle(color: Colors.green),
              )),
              Container(
                  child: Text((postResult != null)
                      ? postResult.name
                      : 'Tidak ada Name')),
              Container(
                  child: Text(
                      (postResult != null) ? postResult.job : 'Tidak ada Job')),
              Container(
                  child: Text((postResult != null)
                      ? postResult.created
                      : 'Tidak ada Waktu')),
              Container(
                width: 250,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      PostResult.connectToApi('Budi', 'Nelayan').then((value) {
                        postResult = value;
                        setState(() {});
                      });
                    },
                    child: Center(
                      child: Text('POST'),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
