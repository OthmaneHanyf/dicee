import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Center(
          child: Text("Dicee"),
        ),
        backgroundColor: Colors.red,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1, rightDiceNum = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          DiceComponent(
            key: Key('left'),
          ),
          DiceComponent(
            key: Key('right'),
          ),
        ],
      ),
    );
  }
}

class DiceComponent extends StatefulWidget {
  const DiceComponent({Key? key}) : super(key: key);

  @override
  State<DiceComponent> createState() => _DiceComponentState();
}

class _DiceComponentState extends State<DiceComponent> {
  int diceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextButton(
          child: Image.asset('images/dice$diceNum.png'),
          onPressed: () {
            setState(() {
              diceNum = Random().nextInt(6) + 1;
            });
          },
        ),
      ),
    );
  }
}
