import 'package:flutter/material.dart';
import './questions.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get phrase {
    String Output = "good";
    if (resultScore < 3) {
      Output = 'you are not good';
    } else if (resultScore < 4) {
      Output = 'just a bit of practice required to you';
    } else if (resultScore == 5) {
      Output = 'wow..you are amazing';
    }
    return (Output);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 40),
        child: Center(
          child: Column(
            children: [
              Text(
                phrase,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: resetHandler,
                child: Text(
                  "Play Again",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                color: Colors.green,
              ),
            ],
          ),
        ));
  }
}
