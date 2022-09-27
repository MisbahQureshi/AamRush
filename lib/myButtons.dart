import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final child;
  final function;
  static bool holdingButton = false;

  MyButton({this.child, this.function});

  bool userIsHoldingButton() {
    return holdingButton;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        holdingButton = true;
        function();
      },
      onTapUp: (details) {
        holdingButton = false;
      },
      child: Container(
        child: Image.asset(
          'images/buttons/$child.png',
          height: 55.0,
          width: 55.0,
        ),
      ),
    );
  }
}
