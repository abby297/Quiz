import 'package:flutter/material.dart';
import './questions.dart';
import './another.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int index;
  Quiz(
      {@required this.answerQuestion,
      @required this.index,
      @required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[index]['questions'],
        ),
        ...(questions[index]['answer'] as List<Map<String, Object>>).map((ans) {
          return Answers(() => answerQuestion(ans['SCORE']), ans['TEXT']);
        }).toList(),
        FloatingActionButton(
            child: Icon(Icons.ad_units_outlined),
            splashColor: Colors.red,
            //hoverColor: Colors.yellowAccent,
            backgroundColor: Colors.green[900],
            onPressed: () {
              print("abhishekh is a Megastar.");
            }),
      ],
    );
  }
}
