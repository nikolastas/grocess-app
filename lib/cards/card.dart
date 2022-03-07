import 'package:flutter/material.dart';
import '../colors&Textlines/colorsAndTextlines.dart';

class SmallcardWidget extends StatefulWidget {
  String text_title;
  String text_desc;
  FloatingActionButton button1;
  FloatingActionButton button2;
  AssetImage asset_image;
  SmallcardWidget(
      {required this.text_desc,
      required this.text_title,
      required this.button1,
      required this.button2,
      required this.asset_image});
  @override
  _SmallcardWidgetState createState() => _SmallcardWidgetState(
      text_desc: text_desc,
      text_title: text_title,
      button1: button1,
      button2: button2,
      asset_image: asset_image);
}

class _SmallcardWidgetState extends State<SmallcardWidget> {
  String text_title;
  String text_desc;
  FloatingActionButton button1;
  FloatingActionButton button2;
  AssetImage asset_image;
  _SmallcardWidgetState(
      {required this.text_desc,
      required this.text_title,
      required this.button1,
      required this.button2,
      required this.asset_image});
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SmallcardWidget - INSTANCE
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.95,
      height: height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xfffdfdff),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: primaryWhite,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              text_title,
                              style: ourThemeData.textTheme.headlineLarge,
                            ),
                          ),
                          SizedBox(height: 8),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              text_desc,
                              style: ourThemeData.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: asset_image,
                          fit: BoxFit.fill,
                        ),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(height: 21),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffdfdff),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                button1,
                SizedBox(width: 8),
                button2,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
