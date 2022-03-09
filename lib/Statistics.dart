import 'dart:ui';

import 'package:flutter/material.dart';
import 'colors&Textlines/colorsAndTextlines.dart';

class statistics extends StatelessWidget {
  List widgetOptions;
  // List screens;
  final selectedIndex;
  statistics({required this.widgetOptions, this.selectedIndex});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 40),
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
      const SizedBox(height: 40),
      Container(
        height: 450,
        width: 497,
        color: secondaryGrey,
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              'Statistics',
              style: TextStyle(
                  color: Color(0xfffdfdff),
                  fontSize: 24.0,
                  fontFamily: 'OpenSans'),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                //print("KOKA");
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          height: 250,
                          width: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 1),
                              const Text("Dairy",
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'OpenSans'),
                                  textAlign: TextAlign.center),
                              Image.asset(
                                'assets/images/dairy.png',
                                width: 400,
                                height: 150,
                                fit: BoxFit.fitWidth,
                              ),
                              const Text(
                                "Dairy is bla bla bla bla",
                                style: TextStyle(
                                    fontSize: 16.0, fontFamily: 'OpenSans'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(300, 0, 20, 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Back",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans'),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                              const SizedBox(height: 3)
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Align(
                alignment: const FractionalOffset(0.1, 0.5),
                child: Container(
                  height: 40,
                  width: 300,
                  child: const Text(
                    "Dairy",
                    style: TextStyle(
                        fontSize: 16.0, fontFamily: 'OpenSans', height: 2),
                    textAlign: TextAlign.center,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xfffceeca),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                //print("KOKA");
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          height: 250,
                          width: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 1),
                              const Text("Vegetables",
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'OpenSans'),
                                  textAlign: TextAlign.center),
                              Image.asset(
                                'assets/images/vegetables.png',
                                width: 400,
                                height: 150,
                                fit: BoxFit.fitWidth,
                              ),
                              const Text(
                                "Vegetables is bla bla bla bla",
                                style: TextStyle(
                                    fontSize: 16.0, fontFamily: 'OpenSans'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(300, 0, 20, 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Back",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans'),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                              const SizedBox(height: 3)
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Align(
                alignment: const FractionalOffset(0.05, 0.5),
                child: Container(
                  height: 40,
                  width: 150,
                  child: const Text(
                    "Vegetables",
                    style: TextStyle(
                        fontSize: 16.0, fontFamily: 'OpenSans', height: 2),
                    textAlign: TextAlign.center,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xfffceeca),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                //print("KOKA");
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          height: 250,
                          width: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 1),
                              const Text("Drinks",
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'OpenSans'),
                                  textAlign: TextAlign.center),
                              Image.asset(
                                'assets/images/drinks.png',
                                width: 400,
                                height: 150,
                                fit: BoxFit.fitWidth,
                              ),
                              const Text(
                                "Drinks is bla bla bla bla",
                                style: TextStyle(
                                    fontSize: 16.0, fontFamily: 'OpenSans'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(300, 0, 20, 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Back",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans'),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                              const SizedBox(height: 3)
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Align(
                alignment: const FractionalOffset(0.16, 0.5),
                child: Container(
                  height: 40,
                  width: 400,
                  child: const Text(
                    "Drinks",
                    style: TextStyle(
                        fontSize: 16.0, fontFamily: 'OpenSans', height: 2),
                    textAlign: TextAlign.center,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xfffceeca),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                //print("KOKA");
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          height: 250,
                          width: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 1),
                              const Text("Fish",
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'OpenSans'),
                                  textAlign: TextAlign.center),
                              Image.asset(
                                'assets/images/fish.png',
                                width: 400,
                                height: 150,
                                fit: BoxFit.fitWidth,
                              ),
                              const Text(
                                "Fish is bla bla bla bla",
                                style: TextStyle(
                                    fontSize: 16.0, fontFamily: 'OpenSans'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(300, 0, 20, 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Back",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans'),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                              const SizedBox(height: 3)
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Align(
                alignment: const FractionalOffset(0.04, 0.5),
                child: Container(
                  height: 40,
                  width: 50,
                  child: const Text(
                    "Fish",
                    style: TextStyle(
                        fontSize: 16.0, fontFamily: 'OpenSans', height: 2),
                    textAlign: TextAlign.center,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xfffceeca),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                //print("KOKA");
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          height: 250,
                          width: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 1),
                              const Text("Meat",
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'OpenSans'),
                                  textAlign: TextAlign.center),
                              Image.asset(
                                'assets/images/meat.png',
                                width: 400,
                                height: 150,
                                fit: BoxFit.fitWidth,
                              ),
                              const Text(
                                "Meat is bla bla bla bla",
                                style: TextStyle(
                                    fontSize: 16.0, fontFamily: 'OpenSans'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(300, 0, 20, 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Back",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans'),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                              const SizedBox(height: 3)
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Align(
                alignment: const FractionalOffset(0.4, 0.5),
                child: Container(
                  height: 40,
                  width: 450,
                  child: const Text(
                    "Meat",
                    style: TextStyle(
                        fontSize: 16.0, fontFamily: 'OpenSans', height: 2),
                    textAlign: TextAlign.center,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xfffceeca),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
