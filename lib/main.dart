import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('my first app'),
      centerTitle: true,
      backgroundColor: Color.fromARGB(150, 12, 0, 179)
    ),
    body: Center(
      child: Text(
        'hello, ninjas!',
        style: TextStyle(
          fontSize: 50.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey[600],
          fontFamily: 'IndieFlower',
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.red[600],
      onPressed: () { print("clicked"); },
      child: Text('click'),
    ),
  );
  }
}