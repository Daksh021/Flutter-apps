import 'package:flutter/material.dart';
import 'package:project_1/Loading.dart';  // Assume this is your loading screen
import 'package:project_1/Home.dart';
import 'package:project_1/About.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planet App',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/loading': (context) => Loading(),
        '/About': (context) => About(),
      },
    );
  }
}
