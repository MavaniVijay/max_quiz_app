import 'package:flutter/material.dart';
import 'package:max_quiz_app/quiz.dart';
import 'package:max_quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(var score) {
    // 0 = 0+1 = 1...... Work it....
    _totalScore = (_totalScore + score as int);
    setState(() {
      _questionIndex = _questionIndex + 3;
    });
    if (_questionIndex < _questionText.length) {
      print("You have More Question....");
    } else {
      print('You did It');
    }
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // var _questionText = [
  //   {
  //     'questionText': 'What is a Favourite Color',
  //     'answerText': [
  //       'Black',
  //       'White',
  //       'Red',
  //       'Pink',
  //     ]
  //   },
  //   {
  //     'questionText': 'What is a Favourite Animal',
  //     'answerText': [
  //       'Lion',
  //       'Rabbit',
  //       'Elephant',
  //       'Cat',
  //     ]
  //   },
  //   {
  //     'questionText': 'What is a Favourite Laptop',
  //     'answerText': [
  //       'Hp',
  //       'Apple',
  //       'Dell',
  //       'Sony',
  //     ]
  //   },
  // ];
  var _questionText = [
    {
      'questionText': 'What is a Favourite Color',
      'answerText': [
        {'inText': 'Black', 'answerValue': 5},
        {'inText': 'White', 'answerValue': 0},
        {'inText': 'Red', 'answerValue': 0},
        {'inText': 'Pink', 'answerValue': 0},
      ]
    },
    {
      'questionText': 'What is a Favourite Animal',
      'answerText': [
        {'inText': 'Lion', 'answerValue': 0},
        {'inText': 'Rabbit', 'answerValue': 5},
        {'inText': 'Elephant', 'answerValue': 0},
        {'inText': 'Cat', 'answerValue': 0},
      ]
    },
    {
      'questionText': 'What is a Favourite Laptop',
      'answerText': [
        {'inText': 'Hp', 'answerValue': 0},
        {'inText': 'Apple', 'answerValue': 0},
        {'inText': 'Dell', 'answerValue': 5},
        {'inText': 'Sony', 'answerValue': 0},
      ]
    },
    {
      'questionText': 'What is a Favourite Programming Language',
      'answerText': [
        {'inText': 'C', 'answerValue': 0},
        {'inText': 'Dart', 'answerValue': 0},
        {'inText': 'Python', 'answerValue': 0},
        {'inText': 'C++', 'answerValue': 5},
      ]
    },
    {
      'questionText': 'What is a Favourite Framework',
      'answerText': [
        {'inText': 'Vs Code', 'answerValue': 5},
        {'inText': 'Android Studio', 'answerValue': 0},
        {'inText': 'Mongo Db', 'answerValue': 0},
        {'inText': 'Intelij Id', 'answerValue': 0},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 30,
          ),
          title: Text('My Quiz'),
          centerTitle: true,
        ),
        body: _questionIndex < _questionText.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                questionText: _questionText,
              )
            : Result(
                totalScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
        // : Text('Quiz is Finish'),
      ),
    );
  }
}
