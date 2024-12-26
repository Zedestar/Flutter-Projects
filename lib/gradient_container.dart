import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});

  final Color startColor; //Colors.deepOrange
  final Color endColor; //Colors.amberAccent

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
