import 'package:flutter/material.dart';
import 'package:mausham/Activity/home.dart';
import 'package:mausham/Activity/loading.dart';
import 'package:mausham/Activity/location.dart';
void main() {
  runApp(MaterialApp(
    routes: {
        "/"  : (context) => Loading(),
        "/home" : (context) => Home(),
    },
  ));
}

