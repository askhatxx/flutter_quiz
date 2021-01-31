import 'package:flutter/material.dart';
import 'package:flutter_quiz/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          textTheme: TextTheme(
            caption: TextStyle(
              fontSize: 22.0,
              color: Colors.white,
            ),
          ),
          fontFamily: 'Georgia'),
      home: HomePage(),
    );
  }
}
