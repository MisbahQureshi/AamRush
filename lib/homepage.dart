import 'package:aamrush/charactersaam.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background image
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backgrounds/firstpage.png'),
            fit: BoxFit.cover,
          ),
        ),

        //Buttons
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //questionmark
              Padding(
                padding: const EdgeInsets.only(left: 220.0),
                child: GestureDetector(
                  child: Expanded(
                    child: Image.asset(
                      'images/buttons/question-button.png',
                      height: 60.0,
                      width: 60.0,
                    ),
                  ),
                  onTap: () {
                    print('click');
                  },
                ),
              ),

              //play game
              GestureDetector(
                child: Expanded(
                  child: Image.asset(
                    'images/buttons/play.png',
                    height: 90.0,
                    width: 90.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CharactersAam()),
                  );
                },
              ),

              //Exit
              Padding(
                padding: const EdgeInsets.only(right: 220.0),
                child: GestureDetector(
                  child: Expanded(
                    child: Image.asset(
                      'images/buttons/x-button.png',
                      height: 60.0,
                      width: 60.0,
                    ),
                  ),
                  onTap: () {
                    print('pressed');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
