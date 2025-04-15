import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceNumber = 1;

  void rollingDice() {
    setState(() {
      currentDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$currentDiceNumber.png", width: 200),
        ElevatedButton(onPressed: rollingDice, child: Text("Acak Dadu")),
      ],
    );
  }
}
