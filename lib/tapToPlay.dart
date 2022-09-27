import 'package:aamrush/playgame.dart';
import 'package:flutter/material.dart';

class TapToPlay extends StatefulWidget {
  @override
  _TapToPlayState createState() => _TapToPlayState();
}

class _TapToPlayState extends State<TapToPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background image
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backgrounds/background.png'),
            fit: BoxFit.cover,
          ),
        ),

        //Buttons
        child: GestureDetector(
          child: Center(
            child: Image.asset(
              'images/buttons/tap-to-play-button.png',
              height: 200.0,
              width: 200.0,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PlayGame()),
            );
          },
        ),
      ),
    );
  }
}
