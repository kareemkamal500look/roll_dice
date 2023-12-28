import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RollDice(),
    );
  }
}

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  int num = 0;

  List images = [
    "Assets/dice-1.png",
    "Assets/dice-2.png",
    "Assets/dice-3.png",
    "Assets/dice-4.png",
    "Assets/dice-5.png",
    "Assets/dice-6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Color.fromARGB(255, 105, 27, 208),
              Color.fromARGB(255, 209, 54, 244),
            ])),
        child: Column(
          children: [
            const Text(
              'Click the dice to get a new number',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    num = Random().nextInt(5);
                  });
                },
                child: Image.asset(images[num]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
