import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Ask Me Anything',
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: BallAnswer(),
      ),
    ),
  );
}

class BallAnswer extends StatefulWidget {
  @override
  _BallAnswerState createState() => _BallAnswerState();
}

class _BallAnswerState extends State<BallAnswer> {
  int ballanswer = 1;

  void BallAnswerPage() {
    setState(() {
      ballanswer = Random().nextInt(4) + 1;
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
                BallAnswerPage();
              },
              child: Image.asset('images/ball$ballanswer.png'),
            ),
          ),
        ],
      ),
    );
  }
}
