import 'package:flutter/material.dart';
import '../colors&Textlines/colorsAndTextlines.dart';

class profileCard extends StatefulWidget {
  final height;
  final width;
  String constumer_name;
  String typeOfUser;
  profileCard(
      {Key? key,
      required this.height,
      required this.width,
      required this.constumer_name,
      required this.typeOfUser})
      : super(key: key);

  @override
  State<profileCard> createState() => _profileCardState();
}

class _profileCardState extends State<profileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryBlue,
        ),
        child: Column(children: <Widget>[
          CircleAvatar(
            radius: widget.width * widget.height * 0.0005,
            child: ClipRRect(
              child: Image.asset('assets/images/Profile_Icon.png'),
              // borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Text(
            widget.constumer_name,
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Open Sans',
                fontSize: 32,
                height: 1.5 /*PERCENT not supported*/
                ),
          ),
          SizedBox(
            height: widget.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Plan:",
                style: TextStyle(
                    color: primaryWhite, fontSize: widget.height * 0.15),
              ),
              SizedBox(
                width: widget.height * 0.3,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: primaryPink,
                ),
                child: Text(
                  widget.typeOfUser,
                  style: TextStyle(
                      color: primaryWhite, fontSize: widget.height * 0.2),
                ),
              )
            ],
          )
        ]));
  }
}
