import 'package:flutter/material.dart';
import 'dart:math';

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
  DateTime selectedDate1 = DateTime.now(), selectedDate2 = DateTime.now();

  Future<void> _selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate1,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate1) {
      setState(() {
        selectedDate1 = picked;
      });
    }
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate2,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate2) {
      setState(() {
        selectedDate2 = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: height * 0.02),
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
        SizedBox(height: height * 0.02),
        Container(
          width: width * 0.95,
          height: height * 0.5,
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
                todayDecoration: BoxDecoration(color: primaryPink),
                selectedDecoration: BoxDecoration(color: Colors.deepPurple),
                markerDecoration: BoxDecoration(color: primaryBlue),
                markerSizeScale: 0.2,
                markersAlignment: Alignment.center),
            headerStyle: HeaderStyle(
              titleCentered: true,
              titleTextFormatter: (date, locale) =>
                  DateFormat.yMMM(locale).format(date),
              formatButtonVisible: false,
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
            eventLoader: (day) {
              if (day.weekday == DateTime.wednesday) {
                return [('Shopping time!!!')];
              }
              return [];
            },
          ),
        ),
        SizedBox(height: height * 0.02),
        Container(
          width: 388,
          height: height * 0.3,
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
              SizedBox(height: height * 0.02),
              const Text('Choose Dates:'),
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  SizedBox(width: 50),
                  ElevatedButton(
                      onPressed: () => _selectDate1(context),
                      child: Text('From: ${ChangeDayFormat(selectedDate1)}'),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          primary: secondaryPink)),
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () => _selectDate2(context),
                      child: Text('To: ${ChangeDayFormat(selectedDate2)}'),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          primary: secondaryPink)),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      //TODO: change to apropriate method!!!!
                      setState(() {
                        money = RandomMoneyGenerator();
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
              SizedBox(height: height * 0.02),
              Container(
                  width: 380,
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
                      Text(
                          "From ${ChangeDayFormat(selectedDate1)} to ${ChangeDayFormat(selectedDate2)} you spent:"),
                      SizedBox(width: 20),
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
      ]),
    );
  }
}

String ChangeDayFormat(date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

int RandomMoneyGenerator() {
  var rng = Random();
  return rng.nextInt(100);
}
