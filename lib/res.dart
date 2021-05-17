import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if(this.resultScore <= 8) resultText = "You are awesome and have good taste!";
    else if(this.resultScore <= 12) resultText = "Pretty likeable!";
    else if(this.resultScore <= 16) resultText = "You are... strange?";
    else resultText = "Hmmmmmmm... are you human???";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(top: 80),
    child: Column(
      children: [
        Text(resultPhrase, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        FlatButton(child: Text("Restart Quiz?"), textColor: Colors.blue, onPressed: this.resetQuiz,),
        ],
      ),
    );
  }
}