import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MagicBall());

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sadra',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask me you question'),
          backgroundColor: Colors.red.shade900,
        ),
        backgroundColor: Colors.red,
        body: MagicBallContext(),
      ),
    );
  }
}

class MagicBallContext extends StatefulWidget {
  @override
  _MagicBallContextState createState() => _MagicBallContextState();
}

class _MagicBallContextState extends State<MagicBallContext> {
  int randomNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeRandomNumber();
              },
              child: Image.asset('images/ball$randomNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void changeRandomNumber() {
    setState(() {
      randomNumber = Random().nextInt(5) + 1;
    });
  }
}
