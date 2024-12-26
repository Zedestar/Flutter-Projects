import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  // Creating the variables that will be received by this class
  final String text;
  @override
  Widget build(context) {
    return Text(text,
        style: TextStyle(
          color: Color.fromARGB(255, 36, 10, 187),
          fontSize: 28,
        ));
  }
}
