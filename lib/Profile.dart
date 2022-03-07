import 'package:first_app_figma/colors&Textlines/colorsAndTextlines.dart';
import 'package:flutter/material.dart';
import 'cards/card.dart';
import 'popups/CancelSubscription.dart';
import 'popups/PayNow.dart';

class _profile extends State {
  List widgetOptions;
  final selectedIndex;
  _profile({required this.widgetOptions, required this.selectedIndex});
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
      SmallcardWidget(
        text_title: "Manage Subcription",
        text_desc: "What do you want to do ?",
        asset_image: AssetImage('assets/images/payment_photo.png'),
        button1: FloatingActionButton.extended(
          label: Text(
            "Cancel",
            style: TextStyle(color: secondaryBlack),
          ),
          backgroundColor: primaryGrey,
          icon: Icon(Icons.close, color: secondaryBlack),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => cancleSubPopup(context),
            );
          },
        ),
        button2: FloatingActionButton.extended(
          label: Text(
            "Pay Now",
            style: TextStyle(color: secondaryBlack),
          ),
          backgroundColor: primaryGrey,
          icon: Icon(
            Icons.payment,
            color: secondaryBlack,
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => MySample(),
            );
          },
        ),
      ),
    ]);
  }
}

class profile extends StatefulWidget {
  List widgetOptions;
  final selectedIndex;
  profile({required this.widgetOptions, required this.selectedIndex});
  @override
  _profile createState() =>
      _profile(widgetOptions: widgetOptions, selectedIndex: selectedIndex);
}
