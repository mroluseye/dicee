import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceButton = 1;
  int rightDiceButton = 1;

  void randomiseDices() {
    setState(() {
      leftDiceButton = Random().nextInt(6) + 1;
      rightDiceButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                randomiseDices();
              },
              child: Image.asset('images/dice$leftDiceButton.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                randomiseDices();
              },
              child: Image.asset('images/dice$rightDiceButton.png'),
            ),
          ),
          // Column(
          //   children: [
          //     ElevatedButton(
          //       style: const ButtonStyle(
          //         backgroundColor: MaterialStatePropertyAll(Colors.black),
          //       ),
          //       onPressed: () {
          //         setState(() {
          //           leftDiceButton = Random().nextInt(6) + 1;
          //           rightDiceButton = Random().nextInt(6) + 1;
          //         });
          //       },
          //       child: const Text('SHUFFLE THE DICE'),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
