import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    @required this.title,
    @required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(
      title: 'Questin 1',
      answers: [
        {
          'answer': 'Answer 1.1',
          'isCorrect': 1,
        },
        {
          'answer': 'Answer 1.2',
        },
        {
          'answer': 'Answer 1.3',
        },
        {
          'answer': 'Answer 1.4',
        },
      ],
    ),
    Question(
      title: 'Questin 2',
      answers: [
        {
          'answer': 'Answer 2.1',
        },
        {
          'answer': 'Answer 2.2',
          'isCorrect': 1,
        },
        {
          'answer': 'Answer 2.3',
        },
        {
          'answer': 'Answer 2.4',
        },
      ],
    ),
    Question(
      title: 'Questin 3',
      answers: [
        {
          'answer': 'Answer 3.1',
        },
        {
          'answer': 'Answer 3.2',
        },
        {
          'answer': 'Answer 3.3',
          'isCorrect': 1,
        },
        {
          'answer': 'Answer 3.4',
        },
      ],
    ),
    Question(
      title: 'Questin 4',
      answers: [
        {
          'answer': 'Answer 4.1',
        },
        {
          'answer': 'Answer 4.2',
        },
        {
          'answer': 'Answer 4.3',
        },
        {
          'answer': 'Answer 4.4',
          'isCorrect': 1,
        },
      ],
    ),
    Question(
      title: 'Questin 5',
      answers: [
        {
          'answer': 'Answer 5.1',
        },
        {
          'answer': 'Answer 5.2',
        },
        {
          'answer': 'Answer 5.3',
        },
        {
          'answer': 'Answer 5.4',
          'isCorrect': 1,
        },
      ],
    ),
  ];

  List<Question> get questions => [..._data];
}
