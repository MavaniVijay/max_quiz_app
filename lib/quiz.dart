import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questionText;
  final Function answerQuestion;
  const Quiz(
      {required this.questionIndex,
      required this.questionText,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        // Text(
        // questionText[questionIndex],
        // ),
        /// question.....
        Question(
          questionText: questionText[questionIndex]['questionText'],
        ),

        ///Spread Operator.......
        /// Answer.....
        ...(questionText[questionIndex]['answerText']
                as List<Map<String, Object>>)
            .map((e) => Answer(
                  answer: e['inText'].toString(),
                  selectHandler: () => answerQuestion(e['answerValue']),
                ))
            .toList(),

        /// Practice On Button Changed Property...
        // ElevatedButton(
        //   onPressed: () {},
        //   child: Text('Elevated BUtton'),
        //   style: ButtonStyle(
        //       foregroundColor: MaterialStateProperty.all(Colors.white),
        //       backgroundColor: MaterialStateProperty.all(Colors.black)),
        // ),
        // TextButton(
        //   child: Text('Text Button'),
        //   style: TextButton.styleFrom(
        //       primary: Colors.white, backgroundColor: Colors.black),
        //   onPressed: () {},
        // ),
        // OutlinedButton(
        //   onPressed: () {},
        //   child: Text('Outlined Button'),
        //   style: OutlinedButton.styleFrom(
        //       backgroundColor: Colors.transparent, primary: Colors.black),
        // ),

        // Answer(
        //   selectHandler: answerQuestion,
        //   answer: 'viju',
        // ),
        // Answer(selectHandler: answerQuestion),
      ],
    );
  }
}
