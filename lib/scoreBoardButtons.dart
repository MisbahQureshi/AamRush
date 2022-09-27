import 'package:flutter/material.dart';

class ScoreBoardButtons extends StatelessWidget {
  final child;
  ScoreBoardButtons({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'images/scoreboard/$child.png',
        height: 60.0,
        width: 60.0,
      ),
    );
  }
}
