import 'package:aamrush/tapToPlay.dart';
import 'package:flutter/material.dart';

class CharactersAam extends StatefulWidget {
  @override
  _CharactersState createState() => _CharactersState();
}

class _CharactersState extends State<CharactersAam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background image
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backgrounds/background_page.png'),
            fit: BoxFit.cover,
          ),
        ),

        //Buttons
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //button left
              GestureDetector(
                child: Expanded(
                  child: Image.asset(
                    'images/buttons/button-left.png',
                    height: 50.0,
                    width: 50.0,
                  ),
                ),
                onTap: () {
                  print('click');
                },
              ),

              //chawnsa
              GestureDetector(
                child: Expanded(
                  child: Image.asset(
                    'images/elements/character-chawnsa.png',
                    height: 150.0,
                    width: 150.0,
                  ),
                ),
                onTap: () {
                  print('click');
                },
              ),

              //main
              GestureDetector(
                child: Expanded(
                  child: Image.asset(
                    'images/elements/character-main.png',
                    height: 190.0,
                    width: 190.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TapToPlay()),
                  );
                },
              ),

              //langra
              GestureDetector(
                child: Expanded(
                  child: Image.asset(
                    'images/elements/character-langra.png',
                    height: 150.0,
                    width: 150.0,
                  ),
                ),
                onTap: () {
                  print('pressed');
                },
              ),

              //button right
              GestureDetector(
                child: Expanded(
                  child: Image.asset(
                    'images/buttons/button-right.png',
                    height: 50.0,
                    width: 50.0,
                  ),
                ),
                onTap: () {
                  print('click');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
