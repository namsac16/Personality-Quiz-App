import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz()
  {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var _questions = [
    {
      'questionText': 'What is your Favourite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 3}
      ]
    },
    {
      'questionText': 'What is your Favourite Animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Gorilla', 'score': 3},
        {'text': 'Tiger', 'score': 8}
      ]
    },
    {
      'questionText': 'What is your Favourite Fruit?',
      'answers': [
        {'text': 'Mango', 'score': 10},
        {'text': 'Apple', 'score': 5},
        {'text': 'Banana', 'score': 8},
        {'text': 'Grapes', 'score': 3}
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personality Quiz"),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
