import 'dart:developer' as dev;
import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int solJakDice = 2;

  int onJakDice = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Tapshyrma 5'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // dev.log('sol jak ishtep atat');
                    setState(() {});
                    solJakDice = math.Random().nextInt(6) + 1;
                    dev.log('solJakDice:$solJakDice');
                  },
                  child: Image.asset(
                    'assets/images/dice$solJakDice.png',
                    color: Color.fromARGB(255, 61, 78, 209),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {});
                    onJakDice = math.Random().nextInt(6) + 1;
                    dev.log('onJakDice:$onJakDice');
                  },
                  child: Image.asset(
                    'assets/images/dice$onJakDice.png',
                    color: Color.fromARGB(255, 47, 130, 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
