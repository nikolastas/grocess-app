import 'package:first_app_figma/Calender.dart';
import 'package:first_app_figma/Camera.dart';
import 'package:first_app_figma/Statistics.dart';
import 'package:first_app_figma/bottomNavBar.dart';
import 'Support.dart';
import 'package:flutter/material.dart';
import 'Profile.dart';

// import 'dart:async';
// import 'package:camera/camera.dart';

// late List<CameraDescription> cameras = [];

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  // WidgetsFlutterBinding.ensureInitialized();
  // try {
  //   cameras = await availableCameras();
  // } on CameraException catch (e) {
  //   logError(e.code, e.description);
  // }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 12,
    fontFamily: 'Roboto',
  );
  List screens = [
    statistics(widgetOptions: _widgetOptions, selectedIndex: 0),
    callendar(widgetOptions: _widgetOptions, selectedIndex: 1),
    camera(widgetOptions: _widgetOptions, selectedIndex: 2),
    profile(widgetOptions: _widgetOptions, selectedIndex: 3),
    support(widgetOptions: _widgetOptions, selectedIndex: 4)
  ];
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Statistics',
      style: optionStyle,
    ),
    Text(
      'Index 1: Calendar',
      style: optionStyle,
    ),
    Text(
      'Index 2: Camera',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
    Text(
      'Index 4: Support',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 2) {
      print("i am the camera tab");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 221, 233),
      body: screens.elementAt(_selectedIndex),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomMenu(
        selectedIndex: _selectedIndex,
        onClicked: _onItemTapped,
      ),
    );
  }
}
