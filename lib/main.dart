import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("My First APP")),
          backgroundColor: const Color.fromARGB(255, 228, 78, 33),
        ),
        body: const GradientContainer(Colors.deepOrange, Colors.redAccent)),
  ));
}
