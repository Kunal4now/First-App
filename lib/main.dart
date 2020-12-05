import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () => {print('Answer 2 chosen!')},
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () {
                print('Answer 3 chosen!');
              },
            ),
            RaisedButton(
              child: Text('Answer4'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
