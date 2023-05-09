import 'package:flutter/material.dart';
import 'package:flutter_roll_dice_app/dice_roler.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
