import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  const Result({Key? key, required this.totalScore, required this.resetQuiz})
      : super(key: key);

  String get result {
    String resultMessage = "Yes, You did it...";
    if (totalScore > 20) {
      resultMessage = 'You! Awesome...';
    } else if (totalScore <= 19 && totalScore > 10) {
      resultMessage = 'You! is Better...';
    } else {
      resultMessage = "You! is Failed...";
    }
    return resultMessage;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: result,
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                    text: '$totalScore',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: ' World!',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
              ],
            ),
          ),
          ElevatedButton(
            child: Text('Rest Quiz'),
            onPressed: () => resetQuiz(),
          ),
        ],
      ),
    );
  }
}
