import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.amber),
          foregroundColor: MaterialStatePropertyAll(Colors.deepPurple),
        ),
        onPressed: answerHandler,
        child: Text(answerText),
      ),
    );
  }
}
