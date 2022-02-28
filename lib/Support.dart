import 'package:flutter/material.dart';

// class profile extends StatefulWidget {
//   final List? widgetOptions1;
//   final List? screens1;
//   final selectedIndex1;
//   const profile(
//       {Key? key, this.widgetOptions1, this.screens1, this.selectedIndex1})
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
    ]);
  }
}
