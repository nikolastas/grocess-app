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
    body: Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
      color: Colors.grey[400],
      child: Text('hello'),
       
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.red[600],
      onPressed: () {  },
      child: Text('click'),
    ),
  );
  }
}