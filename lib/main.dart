import 'package:flutter/material.dart';
import 'package:flutter_quiz/row_column.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyRowColunm(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test')),
      body: Container(
        child: Center(
          child: Text('My text'),
        ),
      ),
    );
  }
}
