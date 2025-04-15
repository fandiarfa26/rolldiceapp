import 'package:flutter/material.dart';
import 'package:rolldiceapp/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1: Colors.blue.shade700,
          color2: Colors.cyan.shade600,
        ),
      ),
    ),
  );
}
