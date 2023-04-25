import 'dart:math';

import 'package:flutter/material.dart';

import 'style_text.dart';

const alignTopLeft = Alignment.topLeft;
const alignBotRight = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  // alternative const
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  void rollDice() {
    Random(560);
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: alignTopLeft, end: alignBotRight),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-six-faces-one.png',
              width: 300,
              filterQuality: FilterQuality.high,
              color: const Color.fromARGB(255, 214, 3, 3),
              colorBlendMode: BlendMode.color,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.amber,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text('Roll Dice')),
          ],
        ),
      ),
    );
  }
}
