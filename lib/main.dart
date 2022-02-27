import 'package:first_app_figma/pages/choose_location.dart';
import 'package:first_app_figma/pages/loading.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/':(context) => Loading(),
      '/home':(context) => Home(),
      '/location':(context) => ChooseLocation()
    },
    )
  );
}