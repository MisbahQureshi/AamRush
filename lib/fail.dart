import 'package:aamrush/homepage.dart';
import 'package:aamrush/scoreBoardButtons.dart';
import 'package:aamrush/tapToPlay.dart';
import 'package:flutter/material.dart';

class Fail extends StatelessWidget {
  final String score;

  Fail({
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/scoreboard/over.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //column left
              Padding(
                padding: const EdgeInsets.only(left: 55.0),
                child: Column(
                  children: [
                    ScoreBoardButtons(
                      child: 'fb',
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    ScoreBoardButtons(
                      child: 'trophy',
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    ScoreBoardButtons(
                      child: 'menu',
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 135.0,
              ),
              //data
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  children: [
                    Text(
                      'X 0',
                      style: TextStyle(
                        fontFamily: 'funnhouse',
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      score,
                      style: TextStyle(
                        fontFamily: 'funnhouse',
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                  ],
                ),
              ),
              //column right
              Padding(
                padding: const EdgeInsets.only(right: 55.0),
                child: Column(
                  children: [
                    ScoreBoardButtons(
                      child: 'next',
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    GestureDetector(
                      child: ScoreBoardButtons(
                        child: 'replay',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TapToPlay()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    GestureDetector(
                      child: ScoreBoardButtons(
                        child: 'home',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
