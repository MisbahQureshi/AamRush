import 'package:flutter/material.dart';

class Brain {
  final int points;
  final int counter;

  Brain({required this.points, required this.counter});

  String Scors() {
    int p = points;
    return points.toString();
  }

  String Waqt() {
    int w = counter;
    return counter.toString();
  }
}
