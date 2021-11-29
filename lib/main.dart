import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallGame(),
      ),
    );

class BallGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
        ),
        body: Ball());
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;

  void ballfacechange() {
    setState(() {
      ballnumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          ballfacechange();
        },
        child: Center(
          child: Image(
            image: AssetImage('images/ball$ballnumber.png'),
          ),
        ),
      ),
    );
  }
}
