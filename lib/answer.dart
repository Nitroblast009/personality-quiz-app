import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerer;
  final String answerText;

  Answer(this.answerer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(this.answerText),
        onPressed: this.answerer,
        color: Colors.blue[100],
      ),
    );
  }
}