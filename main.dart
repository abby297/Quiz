import 'package:abhishekh/result.dart';
import 'package:flutter/material.dart';
import './questions.dart';
import './another.dart';
import './quiz.dart';

void main() => runApp(Run());

class Run extends StatefulWidget {
  @override
  _RunState createState() => _RunState();
}

class _RunState extends State<Run> {
  var totalScore = 0;
  void resetQuiz() {
    setState(() {
      index = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int sCORE) {
    totalScore += sCORE;
    setState(() {
      index += 1;
    });
    print(index);
  }

  var questions = [
    {
      'questions': "what is your favourite color?",
      "answer": [
        {'TEXT': 'RED', 'SCORE': 5},
        {'TEXT': "GREEN", "SCORE": 3},
        {"TEXT": "WHITE", "SCORE": 2},
        {"TEXT": "YELLOW", "SCORE": 1},
      ],
    },
    {
      "questions":
          "haw many equation of motion has been given by sir Issac Newton?",
      'answer': [
        {'TEXT': "3", 'SCORE': 3},
        {'TEXT': "4", 'SCORE': 1},
        {'TEXT': "5", 'SCORE': 0},
        {'TEXT': "6", 'SCORE': 2},
      ],
    },
    {
      'questions': 'who is the father of genetics?',
      'answer': [
        {'TEXT': "GJ Mendal", 'SCORE': 5},
        {'TEXT': "HARBIND SINGH KHORANA", 'SCORE': 3},
        {'TEXT': "CHARLES DARWIN", 'SCORE': 2},
      ],
    },
  ];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
          shadowColor: Colors.red[800],
          backgroundColor: Colors.green[600],
          title: Center(
            child: Text(
              "Quiz",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 31,
              ),
              textAlign: TextAlign.center,
            ),
          )),
      body: index < questions.length
          ? Quiz(
              answerQuestion: answerQuestion,
              index: index,
              questions: questions,
            )
          : Result(totalScore, resetQuiz),
    ));
  }
}
