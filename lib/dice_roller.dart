import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/Himmel.jpg';

  void rollDice() {
    setState(() {
      activeDice = 'assets/images/dan-yap.jpg';
    });
    activeDice = 'assets/images/dan-yap.jpg';
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(activeDice, width: 300),
        SizedBox(height: 20),
        Text(
          'KARENA PAHLAWAN HIMMEL TIDAK AKAN MEMBAYAR PPN 12%',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 20),
          ),
          child: const Text('-HIMMEL THE HERO-'),
        )
      ],
    );
  }
}
