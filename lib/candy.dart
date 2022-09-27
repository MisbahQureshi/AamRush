import 'package:flutter/material.dart';

class Candy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'images/elements/candy.png',
      ),
      height: 40.0,
      width: 40.0,
    );
  }
}
