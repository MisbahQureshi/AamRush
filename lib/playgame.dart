import 'package:aamrush/MyBarrier.dart';
import 'package:aamrush/brain.dart';
import 'package:aamrush/candy.dart';
import 'package:aamrush/fail.dart';
import 'package:aamrush/jumpingMango.dart';
import 'package:aamrush/mango.dart';
import 'package:aamrush/myButtons.dart';
import 'package:aamrush/win.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class PlayGame extends StatefulWidget {
  @override
  _PlayGameState createState() => _PlayGameState();
}

class _PlayGameState extends State<PlayGame> {
  @override
  int counter = 30;
  int points = 00;
  late Timer _timer;

// mango position variables
  static double mangox = -1;
  static double mangoy = 1;

  //for jump and run
  double time = 0;
  double height = 0;
  double initialHeight = mangoy;
  String direction = "right";

  bool midrun = false;
  bool midjump = false;

  //block
  static double blockX = -0.6;
  static double blockY = 0.3;
  static double blockX1 = 0.2;
  static double blockX2 = 1.2;
  static double blockX3 = 2.4;

  //candies
  double candyX = -0.2;
  double candyY = 0.55;
  double candyX1 = 0.28;
  double candyY1 = 0;
  double candyX2 = 0.05;
  double candyY2 = 0;
  double candyX3 = -0.55;
  double candyY3 = 0;
  double candyX4 = 1.2;
  double candyY4 = 0;
  double candyX5 = 1;
  double candyY5 = 0;
  double candyX6 = 1.5;
  double candyY6 = 0.55;
  double candyX7 = 1.9;
  double candyY7 = 0.55;
  double candyX8 = 2.2;
  double candyY8 = 0;
  double candyX9 = 2.4;
  double candyY9 = 0;
  double candyX10 = 0.6;
  double candyY10 = 0.55;
  double candyX11 = 2.6;
  double candyY11 = 0.55;
  double candyX12 = 2.9;
  double candyY12 = 0.55;

  //for bg movement
  double position = 0;

  void result() {
    if (points > 18 && counter <= 1 || points == 26 && counter > 1) {
      Brain rest = Brain(points: points, counter: counter);

      Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => Winner(
                  score: rest.Scors(),
                  waqtJ: rest.Waqt(),
                )),
      );
    } else {
      if (points < 18 && counter <= 1) {
        Brain resting = Brain(points: points, counter: counter);
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => Fail(
                    score: resting.Scors(),
                  )),
        );
      }
    }
  }

  void checkIfAteCandy() {
    if ((mangox - candyX).abs() <= 0.1 && (mangoy - candyY).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX1).abs() <= 0.1 && (mangoy - candyY1).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX1 = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX2).abs() <= 0.1 && (mangoy - candyY2).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX2 = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX3).abs() <= 0.1 && (mangoy - candyY3).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX3 = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX4).abs() <= 0.1 && (mangoy - candyY4).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX4 = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX5).abs() <= 0.1 && (mangoy - candyY5).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX5 = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX6).abs() <= 0.1 && (mangoy - candyY6).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX6 = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX7).abs() <= 0.1 && (mangoy - candyY7).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX7 = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX8).abs() <= 0.1 && (mangoy - candyY8).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX8 = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX9).abs() <= 0.1 && (mangoy - candyY9).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX9 = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX10).abs() <= 0.1 && (mangoy - candyY10).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX10 = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX11).abs() <= 0.1 && (mangoy - candyY11).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX11 = 12.0;
        points += 2;
      });
    }
    if ((mangox - candyX12).abs() <= 0.1 && (mangoy - candyY12).abs() < 0.45) {
      setState(() {
        // if eaten, move the candy off the screen
        candyX12 = 12.0;
        points += 2;
      });
    }
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (counter > 0) {
        setState(() {
          counter -= 1;
        });

        if (counter > 0 && points == 26) {
          timer.cancel();
        }
      } else {
        timer.cancel();
      }
    });
  }

  void fall() {
    result();
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      setState(() {
        mangoy += 0.05;
      });
      if (mangoy > 1) {
        mangoy = 1;
        timer.cancel();
        midjump = false;
      }
    });
  }

  // check if mango is on the platform
  bool onPlatform(double x, double y) {
    result();
    if ((x - blockX).abs() < 0.15 && (y - blockY).abs() < 0.3) {
      midjump = false;
      mangoy = blockY - 0.28;
      return true;
    }
    if ((x - blockX1).abs() < 0.15 && (y - blockY).abs() < 0.3) {
      midjump = false;
      mangoy = blockY - 0.28;
      return true;
    }

    if ((x - blockX2).abs() < 0.15 && (y - blockY).abs() < 0.3) {
      midjump = false;
      mangoy = blockY - 0.28;
      return true;
    }

    if ((x - blockX3).abs() < 0.15 && (y - blockY).abs() < 0.3) {
      midjump = false;
      mangoy = blockY - 0.28;
      return true;
    } else {
      return false;
    }
  }

  void preJump() {
    time = 0;
    initialHeight = mangoy;
  }

  void jump() {
    // the first if statement is to disable the double jump
    if (midjump == false) {
      checkIfAteCandy();
      result();
      midjump = true;
      preJump();
      Timer.periodic(Duration(milliseconds: 50), (timer) {
        checkIfAteCandy();
        result();
        time += 0.05;
        height = -4.9 * time * time + 5 * time;

        if (initialHeight - height > 1) {
          midjump = false;
          checkIfAteCandy();
          result();

          setState(() {
            mangoy = 1;
          });
          timer.cancel();
        }

        // this sets the new height
        else {
          setState(() {
            mangoy = initialHeight - height;
            checkIfAteCandy();
            result();
          });
        }

        // stop jump if we land on the platform
        if (onPlatform(mangox, mangoy)) {
          checkIfAteCandy();
          result();
          timer.cancel();
        }
      });
    }
  }

  void moveRight() {
    direction = "right";
    checkIfAteCandy();
    result();
    if (counter == 30) {
      startTimer();
    }

    Timer.periodic(Duration(milliseconds: 110), (timer) {
      checkIfAteCandy();
      if (MyButton().userIsHoldingButton() == true && (mangox + 0.06) < 0.5) {
        setState(() {
          checkIfAteCandy();
          result();
          mangox += 0.06;
          midrun = !midrun;
        });
      } else if (MyButton().userIsHoldingButton() == true) {
        checkIfAteCandy();
        setState(() {
          mangox = 0.5;
          midrun = !midrun;
          position -= 40;
          blockX -= 0.06;
          blockX1 -= 0.06;
          blockX2 -= 0.06;
          blockX3 -= 0.06;
          candyX -= 0.055;
          candyX1 -= 0.055;
          candyX2 -= 0.055;
          candyX3 -= 0.055;
          candyX4 -= 0.055;
          candyX5 -= 0.055;
          candyX6 -= 0.055;
          candyX7 -= 0.055;
          candyX8 -= 0.055;
          candyX9 -= 0.055;
          candyX10 -= 0.055;
          candyX11 -= 0.055;
          candyX12 -= 0.055;
        });
      } else {
        checkIfAteCandy();
        result();
        timer.cancel();
      }

      if (!onPlatform(mangox, mangoy) && onPlatform(mangox - 0.4, mangoy)) {
        checkIfAteCandy();
        result();
        fall();
      }
    });

    if (!onPlatform(mangox, mangoy) && onPlatform(mangox - 0.4, mangoy)) {
      checkIfAteCandy();
      result();
      fall();
    }
  }

  void moveLeft() {
    direction = "left";
    checkIfAteCandy();
    result();

    Timer.periodic(Duration(milliseconds: 110), (timer) {
      checkIfAteCandy();
      result();
      if (MyButton().userIsHoldingButton() == true && (mangox - 0.06) > -1) {
        setState(() {
          mangox -= 0.06;
          midrun = !midrun;
          if (position - 40 >= -1) {
            position += 40;
          }
        });
      } else {
        checkIfAteCandy();
        result();
        timer.cancel();
      }

      // this checks if now mario is off the platform, and before it was on the platform
      if (!onPlatform(mangox, mangoy) && onPlatform(mangox + 0.4, mangoy)) {
        checkIfAteCandy();
        result();
        fall();
      }
    });

    if (!onPlatform(mangox, mangoy) && onPlatform(mangox + 0.4, mangoy)) {
      checkIfAteCandy();
      result();
      fall();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        //background
        AnimatedPositioned(
            top: -100,
            left: position,
            height: 520,
            child: Image.asset('images/backgrounds/bg.png'),
            duration: Duration(milliseconds: 200)),

        // barrier settings
        AnimatedContainer(
          duration: Duration(milliseconds: 0),
          alignment: Alignment(blockX, blockY),
          child: MyBarrier(),
        ),

        AnimatedContainer(
          duration: Duration(milliseconds: 0),
          alignment: Alignment(blockX1, blockY),
          child: MyBarrier(),
        ),

        AnimatedContainer(
          duration: Duration(milliseconds: 0),
          alignment: Alignment(blockX2, blockY),
          child: MyBarrier(),
        ),

        AnimatedContainer(
          duration: Duration(milliseconds: 0),
          alignment: Alignment(blockX3, blockY),
          child: MyBarrier(),
        ),

        //Candies
        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX, candyY),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX1, candyY1),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX2, candyY2),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX3, candyY3),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX4, candyY4),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX5, candyY5),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX6, candyY6),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX7, candyY7),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX8, candyY8),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX9, candyY9),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX10, candyY10),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX11, candyY11),
            child: Candy()),

        AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(candyX12, candyY12),
            child: Candy()),

        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          //The above score data
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //time
              Text(
                '$counter seconds',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              //level
              Text(
                'Level 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'funnhouse',
                ),
              ),

              // score
              Row(
                children: [
                  Container(
                    child: Image.asset(
                      'images/elements/candy.png',
                    ),
                    height: 30.0,
                    width: 30.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '$points',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        //mango and buttons setup
        Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                child: AnimatedContainer(
                  alignment: Alignment(mangox, mangoy),
                  duration: Duration(
                    microseconds: 0,
                  ),
                  child: midjump
                      ? JumpingMango(
                          direction: direction,
                        )
                      : MyMango(
                          direction: direction,
                          midrun: midrun,
                        ),
                ),
              ),
            ),

            //all about buttons
            Expanded(
              flex: 1,
              child: Container(
                //mainPlayButtons
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //left
                      MyButton(
                        child: 'left',
                        function: moveLeft,
                      ),

                      //pause
                      MyButton(
                        child: 'pause',
                      ),

                      SizedBox(
                        width: 450.0,
                      ),

                      //up
                      MyButton(
                        child: 'up',
                        function: jump,
                      ),

                      //right
                      MyButton(
                        child: 'right',
                        function: moveRight,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
