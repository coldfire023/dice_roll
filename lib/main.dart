import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DiceApp(),
      ),
    ));

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var dice = 1;
  var dice1 = 1;

  void diceRoll() {
    setState(() {
      dice = Random().nextInt(6) + 1;
      dice1 = Random().nextInt(6) + 1;
    });
  }

  void diceRoll2() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: diceRoll,
                  child: Image.asset(
                    'asset/images/dice$dice.png',
                  ),
                ),
              ),
              
              SizedBox(width: 10.0),
              Expanded(
                child: TextButton(
                  onPressed: diceRoll2,
                  child: Image.asset('asset/images/dice$dice1.png'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Card(
            child: RaisedButton(
                color: Colors.red,
                onPressed: diceRoll,
                child: Text(
                  'Click Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
