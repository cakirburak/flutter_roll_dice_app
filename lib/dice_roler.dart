import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  
  static const String dicePath = 'assets/images/dice-';
  String randomDicePath = 'assets/images/dice-1.png';

  void rollDice() {
    int rndm = Random().nextInt(6) + 1;
    setState(() {
      randomDicePath  = '$dicePath$rndm.png';
    });
  }
  
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min, // this way, column wont occupy all the availbe space on the column so that it will be centered
          // mainAxisAlignment: MainAxisAlignment.center, // this will center the element but it will hold all the available space on the column
          children: [
            Image.asset(
              randomDicePath,
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(50, 255, 0, 0),
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
}