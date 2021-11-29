import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function value;
  final String mapAnswer;
  Answers(this.value, this.mapAnswer);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: value,
        child: Text(
          mapAnswer,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        color: Colors.purple[500],
        focusColor: Colors.redAccent,
      ),
    );
  }
}
