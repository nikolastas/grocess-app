import 'package:flutter/material.dart';
import '../colors&Textlines/colors_and_textlines.dart';

class ProfileCard extends StatefulWidget {
  final double height;
  final double width;
  final String constumerName;
  final String typeOfUser;
  const ProfileCard(
      {Key? key,
      required this.height,
      required this.width,
      required this.constumerName,
      required this.typeOfUser})
      : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
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
            widget.constumerName,
            textAlign: TextAlign.justify,
            style: const TextStyle(
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
