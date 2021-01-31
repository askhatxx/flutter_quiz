import 'package:flutter/material.dart';
import 'package:flutter_quiz/models/Question.dart';
import 'package:flutter_quiz/widgets/answer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test')),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: const Color(0xFF2A375A),
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                data.questions[_questionIndex].title,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            ...data.questions[_questionIndex].answers
                .map((value) => Answer(
                      title: value['answer'],
                    ))
                .toList(),
            RaisedButton(
              onPressed: () => setState(() => _questionIndex++),
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
