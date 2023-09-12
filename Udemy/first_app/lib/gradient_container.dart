import 'package:flutter/material.dart';
//import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColorStart, this.gradientColorStop,
      {super.key});

  final Color gradientColorStart, gradientColorStop;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [gradientColorStart, gradientColorStop],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
