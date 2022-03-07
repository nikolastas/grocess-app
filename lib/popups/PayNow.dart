import 'package:flutter/material.dart';
import '../cards/card.dart';
import '../colors&Textlines/colorsAndTextlines.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

Widget paySubPopup(BuildContext context) {
  // ignore: unnecessary_new
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  return Scaffold(
    body: Column(
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
                            "Give your card info",
                            style: ourThemeData.textTheme.headlineLarge,
                          ),
                        ),
                        SizedBox(height: 8),
                        TextField(
                            // controller: _controller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Type Here',
                            ),
                            maxLines: 5,
                            minLines: 3),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  width: 80,
                  height: 80,
                ),
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
              FloatingActionButton.extended(
                  backgroundColor: primaryGrey,
                  label: Text(
                    "Cancel",
                    style: TextStyle(color: secondaryBlack),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              SizedBox(width: 8),
              FloatingActionButton.extended(
                  backgroundColor: secondaryGrey,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  label: Text("Pay")),
            ],
          ),
        ),
      ],
    ),
  );
  // Container(
  //     width: width * 0.95,
  //     height: height * 0.3,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(20),
  //       color: Color(0xfffdfdff),
  //     ),
  //     padding: const EdgeInsets.all(16),
  //     child: SmallcardWidget(
  //         text_desc: "Input here",
  //         text_title: "Give your card info",
  //         button1: FloatingActionButton.extended(
  //             backgroundColor: primaryGrey,
  //             label: Text(
  //               "Cancel",
  //               style: TextStyle(color: secondaryBlack),
  //             ),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             }),
  //         button2: FloatingActionButton.extended(
  //             backgroundColor: secondaryGrey,
  //             onPressed: () {},
  //             label: Text("Pay")),
  //         asset_image: AssetImage('assets/images/payment_photo.png')));
}
