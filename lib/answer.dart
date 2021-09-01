import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String? answer;
  Answer({
    Key? key,
    required this.answer,
    required this.selectHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          onPressed: () => selectHandler(),
          color: Colors.blue,
          child: Text(
            answer!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
