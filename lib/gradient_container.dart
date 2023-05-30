import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GrandientContainer extends StatelessWidget {
  final Color from;
  final Color to;
  const GrandientContainer(this.from, this.to, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [from, to])),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}
