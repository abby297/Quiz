import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String ques;
  Question(this.ques);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(7),
      child: Text(
        ques,
        style: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontStyle: FontStyle.normal,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
