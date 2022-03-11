import 'package:first_app_figma/colors&Textlines/colors_and_textlines.dart';
import 'package:flutter/material.dart';
import 'cards/card.dart';
import 'popups/CancelSubscription.dart';
import 'popups/PayNow.dart';
import 'cards/ProfileCard.dart';

class Profile extends StatefulWidget {
  final List widgetOptions;
  final int selectedIndex;
  final bool paidStatus;
  const Profile(
      {Key? key,
      required this.widgetOptions,
      required this.selectedIndex,
      required this.paidStatus})
      : super(key: key);
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  bool paidStatus = false;
  @override
  void initState() {
    super.initState();
    paidStatus = widget.paidStatus;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 40),
      Center(
        child: widget.widgetOptions.elementAt(widget.selectedIndex),
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
      ProfileCard(
        constumerName: "nikolastas",
        typeOfUser: "Pro",
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.width * 0.4,
      ),
      const SizedBox(
        height: 12,
      ),
      SmallcardWidget(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.3,
        paidStatus: paidStatus,
        textTitle: "Manage Subcription",
        textDesc: "What do you want to do ?",
        assetImage: const AssetImage('assets/images/payment_photo.png'),
        moreWidget: const [],
        button1: FloatingActionButton.extended(
          label: Text(
            "Cancel",
            style: TextStyle(color: secondaryBlack),
          ),
          backgroundColor: primaryGrey,
          icon: Icon(Icons.close, color: secondaryBlack),
          onPressed: () async {
            if (paidStatus == true) {
              final status = await showDialog(
                context: context,
                builder: (BuildContext context) =>
                    cancleSubPopup(context: context, status: paidStatus),
              );
              // print("it was " + paidStatus.toString() + ' now it is ' + '$status');
              setState(() {
                paidStatus = status;
              });
            } else {}
            // paidStatus = status;
            // print("now is " '$paidStatus');
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
          onPressed: () async {
            if (paidStatus == false) {
              final status = await showDialog(
                context: context,
                builder: (BuildContext context) => const MySample(),
              );
              setState(() {
                if (status == true || status == false) {
                  paidStatus = status;
                }
              });
            }
          },
        ),
      ),
    ]);
  }
}
