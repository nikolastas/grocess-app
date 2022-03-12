// ignore: file_names
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'colors&Textlines/colorsAndTextlines.dart';

class Products {
  String type;
  String description;
  String quantity;
  String photo;
  Products(
      {required this.type,
      required this.description,
      required this.quantity,
      required this.photo});
}

class statistics extends StatefulWidget {
  late List widgetOptions;
  // List screens;
  // ignore: prefer_typing_uninitialized_variables
  late final selectedIndex;
  statistics({Key? key, required this.widgetOptions, this.selectedIndex})
      : super(key: key);
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<statistics> {
  List<Products> product = [
    Products(
        type: 'dairy',
        description: 'blabla',
        quantity: '50',
        photo: 'assets/images/dairy.png'),
    Products(
        type: 'fish',
        description: 'blabla',
        quantity: '100',
        photo: 'assets/images/dairy.png'),
    Products(
        type: 'dairy',
        description: 'blabla',
        quantity: '10',
        photo: 'assets/images/dairy.png')
  ];

  Widget productTemplate(Products product, height, width) {
    return InkWell(
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
                      Text(product.type,
                          style: const TextStyle(
                              fontSize: 16.0, fontFamily: 'OpenSans'),
                          textAlign: TextAlign.center),
                      Image.asset(
                        product.photo,
                        width: MediaQuery.of(context).size.width,
                        height: height / 5.20727272727,
                        fit: BoxFit.fitWidth,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          product.description,
                          style: const TextStyle(
                              fontSize: 14.0, fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height / 30,
                          width: width / 1.5,
                          child: Text(product.quantity,
                              style: const TextStyle(
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
                              backgroundColor: MaterialStateProperty.all<Color>(
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
          SizedBox(width: width * 0.01),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: height / 19.5272727273,
              width: width / 13.30909090909,
              child: Text(
                product.type,
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
    );
  }

  get selectedIndex => null;
  get widgetOptions => null;
  // ignore: dead_code
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Column(children: [
      SizedBox(height: height / 15.6218181818),
      Center(
        child: widget.widgetOptions.elementAt(widget.selectedIndex),
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
        width: width * 0.99,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: secondaryGrey,
        ),
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
            Column(
              children: product
                  .map((product) => productTemplate(product, width, height))
                  .toList(),
            ),
          ],
        ),
      ),
    ]);
  }
}
