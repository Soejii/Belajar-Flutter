import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PostResult {
   String name;
  String job;
  String id;
  String created;

  PostResult({this.name, this.job, this.id, this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt'],
    );
  }

  static Future<PostResult> connectToApi(String name, String job) async {
    String apiUrl = 'https://reqres.in/api/users';
    var apiResult =
        await http.post(Uri.parse(apiUrl), body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
