import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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

  var _questions = [
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
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
            : Result(),
      ),
    );
  }
}
