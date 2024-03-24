import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
  var currentDiceRoll = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      currentDiceRoll =
          randomizer.nextInt(6) + 1; //0ile 6 arasında sayı üretir.
    });
    // print(currentDiceRoll); debug consoleda görünmekte
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        // resmin altına boş kutu oluşturmak için yazdık

        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 23,
              )),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
