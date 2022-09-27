import 'package:flutter/material.dart';
import 'dart:math';

class JumpingMango extends StatelessWidget {
  final direction;
  JumpingMango({this.direction});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: 100.0,
        height: 100.0,
        child: Image.asset('images/player/jump.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: 100.0,
          height: 100.0,
          child: Image.asset('images/player/jump.png'),
        ),
      );
    }
  }
}
