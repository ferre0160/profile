// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Your profile'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                // je zou een eigen image moeten kunnen uploaden
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1626557094739-9761f336d82b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text('NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                )),
            SizedBox(
              height: 10,
            ),
            // name zou de ingevulde name uit homepage moeten worden
            Text('Thomas',
                style: TextStyle(
                  color: Colors.orange,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 30,
            ),
            Text('CURRENT LEVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                )),
            SizedBox(
              height: 10,
            ),
            // level zou moeten beginnen op 1, en via de floatingbutton elke keer +1
            Text('4',
                style: TextStyle(
                  color: Colors.orange,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.info,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Click the '+' button to enter a new level",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 14,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
        onPressed: () {
          print('+ 1 level');
        },
      ),
    );
  }
}
