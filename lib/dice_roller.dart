import 'package:flutter/material.dart';
import 'package:flutter_lab4_app/dice_roller.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState
    extends State<DiceRoller> {
  var activeDiceImage =
      'assets/images/dice-1.png';
  void rollDice() {
    setState(() {
      activeDiceImage =
          'assets/images/dice-4.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          //const SizedBox(height: 20),
          activeDiceImage,
          width: 300,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.lime,
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: Text("Roll Dice"),
        ),
      ],
    );
  }
}
