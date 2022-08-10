import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetAll {
  String id;
  String name;

  GetAll({this.id, this.name});

  factory GetAll.createGetAll(Map<String, dynamic> jsonObject) {
    return GetAll(
        id: jsonObject["id"].toString(),
        name: jsonObject["first_name"] + " " + jsonObject["last_name"]);
  }

  static Future<List<GetAll>> getUser(String page) async {
    String apiUrl = "https://reqres.in/api/users?page=" + page;
    var apiResult = await http.get(Uri.parse(apiUrl));
    var jsonobject = json.decode(apiResult.body);

    List<dynamic> listUser = (jsonobject as Map<String, dynamic>)['data'];
    List<GetAll> users = [];
    for (var i = 0; i < listUser.length; i++) 
      users.add(GetAll.createGetAll(listUser[i]));

      return users;
    
  }
}
