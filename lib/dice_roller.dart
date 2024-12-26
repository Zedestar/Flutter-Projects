import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 'assets/images/dice-2.png';
  var rolledNumber = 0;

  // Creating the class function
  void handleButtonClick() {
    int randomNumber = Random().nextInt(6) + 1;
    setState(() {
      activeImage = 'assets/images/dice-$randomNumber.png';
      rolledNumber++;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            style: null,
            onPressed: handleButtonClick,
            child: Text("Roll dice",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold))),
        Text("Rolled $rolledNumber times"),
        const SizedBox(height: 20),
      ],
    );
  }
}
