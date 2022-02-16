import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 12,
    fontFamily: 'Roboto',
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Statistics',
      style: optionStyle,
    ),
    Text(
      'Index 1: Calendar',
      style: optionStyle,
    ),
    Text(
      'Index 2: Camera',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
    Text(
      'Index 4: Support',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 2) {
      print("i am the camera tab");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 221, 233),
      body: Column(children: [
        SizedBox(height: 40),
        Center(
          child: _widgetOptions.elementAt(_selectedIndex),
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
                    fit: BoxFit.fill, image: AssetImage('assets/logo.png')),
                color: Color.fromRGBO(253, 253, 255, 1),
              )),
        )
      ]),
      bottomNavigationBar: NavBar(),
    );
  }

  BottomNavigationBar NavBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Statistics',
          backgroundColor: Colors.grey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_rounded),
          label: 'Calendar',
          backgroundColor: Colors.grey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          label: 'Camera',
          backgroundColor: Colors.grey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.face),
          label: 'Profile',
          backgroundColor: Colors.grey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.support_agent),
          label: 'Support',
          backgroundColor: Colors.grey,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color.fromARGB(255, 140, 187, 241),
      onTap: _onItemTapped,
    );
  }
}
