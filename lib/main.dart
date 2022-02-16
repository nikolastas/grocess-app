import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCrad(),
));

class NinjaCrad extends StatefulWidget {
  @override
  State<NinjaCrad> createState() => _NinjaCradState();
}

class _NinjaCradState extends State<NinjaCrad> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.green[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
           ninjaLevel +=1; 
           if (ninjaLevel >=5){
             ninjaLevel = 0;
           }
          });
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image1.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 50,
              color: Colors.green[600],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.green[200],
                letterSpacing: 2,
              ),
            ),
            SizedBox( height:10),
            Text(
              'Nikos',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox( height:30),
            Text(
              'Level',
              style: TextStyle(
                color: Colors.green[200],
                letterSpacing: 2,
              ),
            ),
            SizedBox( height:10),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox( 
              height:30
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.green[100],
                  ),
                  SizedBox( width: 10),
                  Text(
                    'nikos@email.com',
                    style: TextStyle(
                      color: Colors.green[200],
                      fontSize: 18,
                      letterSpacing: 1
                    ),
                  )
                ],
              )
          ],
        ),
      )
    );
  }
}

