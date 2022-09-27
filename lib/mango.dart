import 'package:flutter/material.dart';
import 'dart:math';

class MyMango extends StatelessWidget {
  final direction;
  final midrun;

  MyMango({this.direction, this.midrun});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: 100.0,
        height: 100.0,
        child: midrun
            ? Image.asset('images/player/3.png')
            : Image.asset('images/player/1.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: 100.0,
          height: 100.0,
          child: midrun
              ? Image.asset('images/player/3.png')
              : Image.asset('images/player/1.png'),
        ),
      );
    }
  }
}
