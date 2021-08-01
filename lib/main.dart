import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  var questions = [
    {
      'questionText': 'What is your Favourite Color?',
      'answers': ['Black', 'Blue', 'Red', 'Green']
    },
    {
      'questionText': 'What is your Favourite Animal?',
      'answers': ['Lion', 'Elephant', 'Gorilla', 'Tiger']
    },
    {
      'questionText': 'What is your Favourite Fruit?',
      'answers': ['Mango', 'Apple', 'Banana', 'Peach']
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
