import 'package:camera/camera.dart';
import 'package:first_app_figma/Calender.dart';
import 'package:first_app_figma/Camera.dart';
import 'package:first_app_figma/Statistics.dart';
import 'package:first_app_figma/bottomNavBar.dart';
import 'Support.dart';
import 'package:flutter/material.dart';
import 'Profile.dart';

import 'dart:async';

import 'colors&Textlines/colorsAndTextlines.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;
  const MyApp({Key? key, required this.camera}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(
        camera: camera,
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  final CameraDescription camera;
  const MyStatefulWidget({Key? key, required this.camera}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  late CameraDescription camera;
  @override
  void initState() {
    super.initState();
    camera = widget.camera;
  }

  // _MyStatefulWidgetState({required this.camera});
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 12,
    fontFamily: 'Roboto',
  );
  var paidStatus = true;
  late List screens = [
    statistics(widgetOptions: _widgetOptions, selectedIndex: 0),
    callendar(widgetOptions: _widgetOptions, selectedIndex: 1),
    TakePictureScreen(
      camera: camera,
      selectedIndex: 2,
      widgetOptions: _widgetOptions,
    ),
    Profile(
        widgetOptions: _widgetOptions,
        selectedIndex: 3,
        paidStatus: paidStatus),
    Support(widgetOptions: _widgetOptions, selectedIndex: 4)
  ];
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 2) {
      debugPrint("i am the camera tab");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryGrey,
      body: screens.elementAt(_selectedIndex),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomMenu(
        selectedIndex: _selectedIndex,
        onClicked: _onItemTapped,
      ),
    );
  }
}
