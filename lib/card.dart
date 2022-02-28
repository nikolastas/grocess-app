import 'package:flutter/material.dart';

class SmallcardWidget extends StatefulWidget {
  @override
  _SmallcardWidgetState createState() => _SmallcardWidgetState();
}

class _SmallcardWidgetState extends State<SmallcardWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SmallcardWidget - INSTANCE

    return Container(
        color: Color.fromRGBO(253, 253, 255, 1),
        width: 391,
        height: 218,
        child: Stack(children: <Widget>[
          Positioned(
              top: 16,
              left: 16,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Color.fromRGBO(253, 253, 255, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Are you sure?',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Open Sans',
                                fontSize: 32,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Please re-think?',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Open Sans',
                                fontSize: 24,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(196, 196, 196, 1),
                        )),
                  ],
                ),
              )),
          Positioned(
              top: 146,
              left: 16,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Color.fromRGBO(253, 253, 255, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color:
                                  Color.fromRGBO(0, 0, 0, 0.30000001192092896),
                              offset: Offset(0, 1),
                              blurRadius: 3)
                        ],
                        color: Color.fromRGBO(215, 221, 233, 1),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(width: 12),
                          Text(
                            'Don’t Cancel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                letterSpacing: 0.10000000149011612,
                                fontWeight: FontWeight.normal,
                                height: 1.4285714285714286),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color:
                                  Color.fromRGBO(0, 0, 0, 0.30000001192092896),
                              offset: Offset(0, 1),
                              blurRadius: 3)
                        ],
                        color: Color.fromRGBO(215, 221, 233, 1),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(width: 12),
                          Text(
                            'Cancel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                letterSpacing: 0.10000000149011612,
                                fontWeight: FontWeight.normal,
                                height: 1.4285714285714286),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ]));
  }
}
