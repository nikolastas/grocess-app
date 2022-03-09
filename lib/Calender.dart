import 'dart:html';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'colors&Textlines/colorsAndTextlines.dart';
import 'package:intl/intl.dart';

// class profile extends StatefulWidget {
//   final List? widgetOptions1;
//   final List? screens1;
//   final selectedIndex1;
//   const profile(
//       {Key? key, this.widgetOptions1, this.screens1, this.selectedIndex1})
//       : super(key: key);

//   @override
//   _profileState createState() => _profileState();
// }

class callendar extends StatefulWidget {
  List widgetOptions;
  // List screens;
  final selectedIndex;
  callendar({required this.widgetOptions, this.selectedIndex});

  @override
  State<callendar> createState() => _callendarState();
}

class _callendarState extends State<callendar> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  var _calendarFormat;
  var money = 0;
  String dropdown1 = 'one', dropdown2 = 'das';
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 40),
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
      SizedBox(height: 30),
      Container(
        width: 392,
        height: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(23),
            topRight: Radius.circular(23),
            bottomLeft: Radius.circular(23),
            bottomRight: Radius.circular(23),
          ),
          color: primaryWhite,
        ),
        child: TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
          calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                  topRight: Radius.circular(90),
                  bottomLeft: Radius.circular(90),
                  bottomRight: Radius.circular(90),
                ),
                color: primaryPink),
            selectedDecoration: BoxDecoration(color: primaryBlue),
          ),
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay; // update `_focusedDay` here as well
            });
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
        ),
      ),
      SizedBox(height: 30),
      Container(
        width: 388,
        height: 153,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(23),
            topRight: Radius.circular(23),
            bottomLeft: Radius.circular(23),
            bottomRight: Radius.circular(23),
          ),
          color: primaryPink,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Text('Choose Dates:'),
            const SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 100),
                DropdownButton<String>(
                  //FIXME: overflow on lists
                  value: dropdown1,
                  // isExpanded: true,
                  items: <String>['one', 'two', 'three']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdown1 = newValue!;
                    });
                  },
                  style: const TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                SizedBox(width: 10),
                DropdownButton<String>(
                  //FIXME: overflow on lists
                  value: dropdown2,
                  // isExpanded: true,
                  items: <String>['hadsa', 'das', 'thrsdasde']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdown2 = newValue!;
                    });
                  },
                  style: const TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    //TODO: change to apropriate method!!!!
                    setState(() {
                      money += 1;
                    });
                  },
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      backgroundColor: Colors.deepPurple),
                  child: Text('Search',
                      style: const TextStyle(color: Colors.white)),
                )
              ],
            ),
            const SizedBox(height: 30),
            Container(
                width: 400,
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                    bottomLeft: Radius.circular(23),
                    bottomRight: Radius.circular(23),
                  ),
                  color: primaryWhite,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text("On ${ChangeDayFormat(_selectedDay)} you spent:"),
                    SizedBox(width: 130),
                    Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(90),
                          topRight: Radius.circular(90),
                          bottomLeft: Radius.circular(90),
                          bottomRight: Radius.circular(90),
                        ),
                        color: Colors.deepPurple,
                      ),
                      child: Text('$money',
                          style: const TextStyle(color: Colors.white)),
                    )
                  ],
                ))
          ],
        ),
      )
    ]);
  }
}

String ChangeDayFormat(date) {
  return DateFormat('yyyy-MM-dd').format(date);
}
