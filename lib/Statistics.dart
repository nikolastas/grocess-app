import 'dart:ui';
//import 'products.dart';
import 'package:flutter/material.dart';
import 'colors&Textlines/colorsAndTextlines.dart';

class statistics extends StatelessWidget {
  List widgetOptions;
  var size, height, width;
  // List screens;

  final selectedIndex;
  statistics({required this.widgetOptions, this.selectedIndex});
  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    print("height is:$height");
    print("width is:$width");
    return Column(children: [
      SizedBox(height: height * 0.05),
      Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: height / 5.74331550802,
            width: width / 2.19400711021,
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
      SizedBox(height: height / 13.6218181818),
      Container(
        height: height / 1.9,
        width: width,
        color: secondaryGrey,
        child: Column(
          children: [
            SizedBox(height: height / 25),
            const Text(
              'Statistics',
              style: TextStyle(
                  color: Color(0xfffdfdff),
                  fontSize: 24.0,
                  fontFamily: 'OpenSans'),
            ),
            SizedBox(height: height / 31.2436363636),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          height: height / 1.75,
                          width: MediaQuery.of(context).size.width,
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
                                width: MediaQuery.of(context).size.width,
                                height: height / 5.20727272727,
                                fit: BoxFit.fitWidth,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  '''Dairy products or milk products are food products made from (or containing) milk. Dairy products include common grocery store food items such as yogurt, cheese and butter.''',
                                  style: TextStyle(
                                      fontSize: 14.0, fontFamily: 'OpenSans'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height / 30,
                                  width: width / 1.5,
                                  child: const Text("You have bought 1500kcal",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                  decoration: const BoxDecoration(
                                    color: const Color(0xff479afa),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      topRight: Radius.circular(7),
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width / 2.0,
                                    0,
                                    MediaQuery.of(context).size.width / 30.0,
                                    0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xff479afa))),
                                  child: const Text("Back",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                              SizedBox(height: height / 260.363636364)
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Row(
                children: [
                  SizedBox(width: width / 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: height / 19.5272727273,
                      width: width / 1.30909090909,
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
                ],
              ),
            ),
            SizedBox(height: height / 78.1090909091),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          height: height / 1.75,
                          width: MediaQuery.of(context).size.width,
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
                                width: MediaQuery.of(context).size.width,
                                height: height / 5.20727272727,
                                fit: BoxFit.fitWidth,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  '''Vegetables are parts of plants that are consumed by humans or other animals as food. The original meaning is still commonly used and is applied to plants collectively to refer to all edible plant matter, including the flowers, fruits, stems, leaves, roots, and seeds.''',
                                  style: TextStyle(
                                      fontSize: 14.0, fontFamily: 'OpenSans'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height / 30,
                                  width: width / 1.5,
                                  child: const Text("You have bought 1000kcal",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                  decoration: const BoxDecoration(
                                    color: const Color(0xff479afa),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      topRight: Radius.circular(7),
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width / 2.0,
                                    0,
                                    MediaQuery.of(context).size.width / 30.0,
                                    0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xff479afa))),
                                  child: const Text("Back",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                              SizedBox(height: height / 260.363636364)
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Row(
                children: [
                  SizedBox(width: width / 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: height / 19.5272727273,
                      width: width / 1.8,
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
                ],
              ),
            ),
            SizedBox(height: height / 78.1090909091),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          height: height / 1.75,
                          width: MediaQuery.of(context).size.width,
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
                                width: MediaQuery.of(context).size.width,
                                height: height / 5.20727272727,
                                fit: BoxFit.fitWidth,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  '''Meat is animal flesh that is eaten as food.Meat is mainly composed of water, protein, and fat. It is edible raw, but is normally eaten after it has been cooked and seasoned or processed in a variety of ways.''',
                                  style: TextStyle(
                                      fontSize: 14.0, fontFamily: 'OpenSans'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height / 30,
                                  width: width / 1.5,
                                  child: const Text("You have bought 2000kcal",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                  decoration: const BoxDecoration(
                                    color: const Color(0xff479afa),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      topRight: Radius.circular(7),
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width / 2.0,
                                    0,
                                    MediaQuery.of(context).size.width / 30.0,
                                    0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xff479afa))),
                                  child: const Text("Back",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                              SizedBox(height: height / 260.363636364)
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Row(
                children: [
                  SizedBox(width: width / 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: height / 19.5272727273,
                      width: width / 1.2,
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
                ],
              ),
            ),
            SizedBox(height: height / 78.1090909091),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          height: height / 1.75,
                          width: MediaQuery.of(context).size.width,
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
                                width: MediaQuery.of(context).size.width,
                                height: height / 5.20727272727,
                                fit: BoxFit.fitWidth,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  '''Many species of fish are caught by humans and consumed as food in virtually all regions around the world. Fish has been an important dietary source of protein and other nutrients throughout human history.''',
                                  style: TextStyle(
                                      fontSize: 14.0, fontFamily: 'OpenSans'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height / 30,
                                  width: width / 1.5,
                                  child: const Text("You have bought 750kcal",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                  decoration: const BoxDecoration(
                                    color: const Color(0xff479afa),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      topRight: Radius.circular(7),
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width / 2.0,
                                    0,
                                    MediaQuery.of(context).size.width / 30.0,
                                    0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xff479afa))),
                                  child: const Text("Back",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                              SizedBox(height: height / 260.363636364)
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Row(
                children: [
                  SizedBox(width: width / 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: height / 19.5272727273,
                      width: width / 2.4,
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
                ],
              ),
            ),
            SizedBox(height: height / 78.1090909091),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          height: height / 1.3,
                          width: MediaQuery.of(context).size.width,
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
                                width: MediaQuery.of(context).size.width,
                                height: height / 5.20727272727,
                                fit: BoxFit.fitWidth,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  '''A drink (or beverage) is a liquid intended for human consumption. In addition to their basic function of satisfying thirst, drinks play important roles in human culture. Common types of drinks include plain drinking water, milk, juice, smoothies and soft drinks. Traditionally warm beverages include coffee, tea, and hot chocolate. Caffeinated drinks that contain the stimulant caffeine have a long history.''',
                                  style: TextStyle(
                                      fontSize: 14.0, fontFamily: 'OpenSans'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height / 30,
                                  width: width / 1.5,
                                  child: const Text("You have bought 100kcal",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                  decoration: const BoxDecoration(
                                    color: const Color(0xff479afa),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      topRight: Radius.circular(7),
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width / 2.0,
                                    0,
                                    MediaQuery.of(context).size.width / 30.0,
                                    0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xff479afa))),
                                  child: const Text("Back",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                              SizedBox(height: height / 260.363636364)
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Row(
                children: [
                  SizedBox(width: width / 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: height / 19.5272727273,
                      width: width / 4,
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
                ],
              ),
            ),
            SizedBox(height: height / 78.1090909091),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          height: height / 1.75,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 1),
                              const Text("Fruits",
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'OpenSans'),
                                  textAlign: TextAlign.center),
                              Image.asset(
                                'assets/images/fruit.png',
                                width: MediaQuery.of(context).size.width,
                                height: height / 5.20727272727,
                                fit: BoxFit.fitWidth,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  '''Fruits are the sweet and fleshy product of a tree or other plant that contains seed and can be eaten as food.''',
                                  style: TextStyle(
                                      fontSize: 14.0, fontFamily: 'OpenSans'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height / 30,
                                  width: width / 1.5,
                                  child: const Text("You have bought 300kcal",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                  decoration: const BoxDecoration(
                                    color: const Color(0xff479afa),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      topRight: Radius.circular(7),
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width / 2.0,
                                    0,
                                    MediaQuery.of(context).size.width / 30.0,
                                    0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xff479afa))),
                                  child: const Text("Back",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                          color: Colors.black),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                              SizedBox(height: height / 260.363636364)
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Row(
                children: [
                  SizedBox(width: width / 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: height / 19.5272727273,
                      width: width / 2.0,
                      child: const Text(
                        "Fruits",
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
                ],
              ),
            ),
            SizedBox(height: height / 78.1090909091),
          ],
        ),
      ),
    ]);
  }
}
