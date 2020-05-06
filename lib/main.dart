import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          'Click the BALL for answer!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
