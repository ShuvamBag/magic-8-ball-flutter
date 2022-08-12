import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(child: Text('Ask me anything')),
      ),
      backgroundColor: Colors.greenAccent,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int Ballnumber=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: FlatButton(
            onPressed:(){
              setState(() {
                Ballnumber=Random().nextInt(5)+1;
              });
            },
            child: Image.asset('images/ball$Ballnumber.png'),
        ),
        ),
      ),
    );
  }
}
