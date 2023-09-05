import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  int diceInt = 1;

  void rollDice() {
    setState(() {
      diceInt = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/dice-images/dice-$diceInt.png",
                  width: 250
                  ),

                const SizedBox(
                  height: 20
                  ),

                ElevatedButton(
                  onPressed: rollDice,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.amber,
                    textStyle: const TextStyle(
                      fontSize: 28
                    )
                  ), 
                  child: const Text("Roll Dice"))
              ]);
  }
}