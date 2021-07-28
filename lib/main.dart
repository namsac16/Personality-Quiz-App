import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questionIndex = 0;
    void answerQuestion()
    {
      questionIndex += 1;
    }
    var questions = [
      'What is you Favourite Color?',
      'What is your Favourite Animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Answer 3"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Answer 4"),
            ),
          ],
        ),
      ),
    );
  }
}
