import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber =1;
  void randomDice() { 
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1; //0-5+1
                    rightDiceNumber = Random().nextInt(6) + 1; 
                  });
                 }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ Row(
        children:[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: randomDice,
                child: Image.asset(
                  'images/dice$leftDiceNumber.png'
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: randomDice,
                  child: Image.asset(
                    'images/dice$rightDiceNumber.png'
                  ),
                ),
              ),
            ),
        ]
      ),
      ]
    );
  }
}

class Exapanded {
}
