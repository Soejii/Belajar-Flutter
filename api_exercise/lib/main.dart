// ignore_for_file: dead_code

import 'package:api_exercise/get_all_user_view.dart';
import 'package:api_exercise/get_user_view.dart';
import 'package:api_exercise/post_result_model.dart';
import 'package:api_exercise/post_result_view.dart';
import 'package:api_exercise/user_model.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetAllUser()
    //PostApi()
    ;

    // PostApi mengambil view dari post result
    // GetUser mengambil view dari get user
  }
}
