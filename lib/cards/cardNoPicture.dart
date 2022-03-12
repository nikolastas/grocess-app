import 'package:flutter/material.dart';
import '../colors&Textlines/colorsAndTextlines.dart';

class SmallcardWidgetNoPicture extends StatefulWidget {
  final double width;
  final double height;
  final String textTitle;
  final String textDesc;
  final FloatingActionButton button1;
  final FloatingActionButton button2;
  // final AssetImage assetImage;
  final List<Widget> moreWidget;
  final bool paidStatus;
  const SmallcardWidgetNoPicture(
      {Key? key,
      required this.textDesc,
      required this.textTitle,
      required this.button1,
      required this.button2,
      // required this.assetImage,
      required this.height,
      required this.width,
      required this.moreWidget,
      required this.paidStatus})
      : super(key: key);
  @override
  _SmallcardWidgetStateNoPicture createState() {
    return _SmallcardWidgetStateNoPicture();
  }
}

class _SmallcardWidgetStateNoPicture extends State<SmallcardWidgetNoPicture> {
  bool paidStatus = false;
  String paidStatusMessage = "NULL";
  @override
  void initState() {
    super.initState();
    paidStatus = widget.paidStatus;
    if (paidStatus) {
      paidStatusMessage = "Paid";
    } else {
      paidStatusMessage = "NOT Paid";
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.paidStatus) {
      paidStatusMessage = "Paid";
    } else {
      paidStatusMessage = "NOT Paid";
    }
    // Figma Flutter Generator SmallcardWidget - INSTANCE
    var width = widget.width;
    var height = widget.height;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xfffdfdff),
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
                              widget.textTitle,
                              style: ourThemeData.textTheme.headlineLarge,
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              widget.textDesc,
                              style: ourThemeData.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text("Status: "),
              const SizedBox(
                width: 12,
              ),
              Text(paidStatusMessage),
            ],
          ),
          const SizedBox(height: 11),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xfffdfdff),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.button1,
                const SizedBox(width: 8),
                widget.button2,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
