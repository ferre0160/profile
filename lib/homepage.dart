// ignore_for_file: prefer_const_constructors

import 'package:first_project/main.dart';
import 'package:flutter/material.dart';

import 'profilepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Text(
              'WELCOME',
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Text(
              'Create your character profile:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter a name',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.grey[850],
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  )),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange)),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Create Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
