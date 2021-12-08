import 'package:first_project/homepage.dart';
import 'package:flutter/material.dart';

import 'profilepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => const Homepage(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => HomeTab(),
    },
  ));
}
