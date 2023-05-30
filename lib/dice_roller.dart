import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int? _diceValue;

  @override
  Widget build(BuildContext context) {
    if (_diceValue == null) rollDice();

    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/images/dice-$_diceValue.png',
          width: 200, height: 200),
      const SizedBox(height: 20),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll'))
    ]);
  }

  rollDice() {
    setState(() {
      _diceValue = randomizer.nextInt(6) + 1;
    });
  }
}
