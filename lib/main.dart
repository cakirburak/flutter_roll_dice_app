import 'package:flutter/material.dart';
import 'package:flutter_roll_dice_app/myapp_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyApp(
          Color.fromARGB(255, 193, 233, 14),
          Color.fromARGB(255, 5, 116, 1),
        ),
      ),
    ),
  );
}
