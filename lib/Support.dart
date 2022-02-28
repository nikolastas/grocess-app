import 'package:flutter/material.dart';

// class profile extends StatefulWidget {
//   final List? widgetOptions1;
//   final List? screens1;
//   final selectedIndex1;
//   const profile(
import 'colors&Textlines/colorsAndTextlines.dart'; //       {Key? key, this.widgetOptions1, this.screens1, this.selectedIndex1})
//       : super(key: key);

//   @override
//   _profileState createState() => _profileState();
// }

class support extends StatelessWidget {
  List widgetOptions;
  // List screens;
  final selectedIndex;
  support({required this.widgetOptions, this.selectedIndex});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 40),
      Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: 136.0,
            width: 179.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(23),
                topRight: Radius.circular(23),
                bottomLeft: Radius.circular(23),
                bottomRight: Radius.circular(23),
              ),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/logo.png')),
              color: Color.fromRGBO(253, 253, 255, 1),
            )),
      ),
      // screens.elementAt(selectedIndex)
      //
      SizedBox(height: 40),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 210),
          Container(
              width: 43,
              height: 43,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 43,
                        height: 43,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/facebook.png'),
                              fit: BoxFit.fitWidth),
                        )))
              ])),
          SizedBox(width: 20),
          Container(
              width: 43,
              height: 43,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 43,
                        height: 43,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Instagram_Photo.png'),
                              fit: BoxFit.fitWidth),
                        ))),
              ]))
        ],
      ),
      SizedBox(height: 40),
      Container(
        // width: 340,
        // height: 150,
        padding: EdgeInsets.all(8.0),
        color: primaryWhite,
        child: Column(
          children: [
            Text('Contact Us'),
            SizedBox(height: 40),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Type Here',
                ),
                maxLines: 4,
                minLines: 4),
            SizedBox(height: 40),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  print("send message");
                },
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    backgroundColor: primaryBlue),
                child: const Text('Send'),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
