import 'package:flutter/material.dart';
import '../cards/card.dart';
import '../colors&Textlines/colorsAndTextlines.dart';
import 'package:first_app_figma/cards/cardNoPicture.dart';

Widget cancleSubPopup({required BuildContext context, var status}) {
  // ignore: unnecessary_new
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryWhite,
      ),
      padding: const EdgeInsets.all(16),
      child: SmallcardWidgetNoPicture(
        height: height * 0.5,
        width: width * 0.95,
        textDesc: "Are you sure?",
        textTitle: "Please rethink",
        paidStatus: status,
        moreWidget: const [],
        button1: FloatingActionButton.extended(
            backgroundColor: secondaryGrey,
            label: const Text("Don't Cancel"),
            onPressed: () {
              Navigator.pop(context, status);
            }),
        button2: FloatingActionButton.extended(
            backgroundColor: primaryGrey,
            onPressed: () {
              status = false;
              Navigator.pop(context, false);
            },
            label: Text(
              "Cancel",
              style: TextStyle(color: secondaryBlack),
            )),
      ));
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
