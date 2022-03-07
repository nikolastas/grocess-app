import 'package:flutter/material.dart';
import '../cards/card.dart';
import '../colors&Textlines/colorsAndTextlines.dart';

Widget cancleSubPopup(BuildContext context) {
  // ignore: unnecessary_new
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
      child: SmallcardWidget(
          text_desc: "Are you sure?",
          text_title: "Please rethink",
          button1: FloatingActionButton.extended(
              backgroundColor: secondaryGrey,
              label: Text("Don't Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          button2: FloatingActionButton.extended(
              backgroundColor: primaryGrey,
              onPressed: () {},
              label: Text(
                "Cancel",
                style: TextStyle(color: secondaryBlack),
              )),
          asset_image: AssetImage('assets/images/payment_photo.png')));
  // return new AlertDialog(
  //   title: const Text('Popup example'),
  //   content: new Column(
  //     mainAxisSize: MainAxisSize.min,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text('Hello'),
  //     ],
  //   ),
  //   actions: <Widget>[
  //     // ignore: unnecessary_new
  //     new FlatButton(
  //       onPressed: () {
  //         Navigator.of(context).pop();
  //       },
  //       textColor: Theme.of(context).primaryColor,
  //       child: const Text('Close'),
  //     ),
  //   ],
  // );
}
