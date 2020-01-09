import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(backgroundColor: Colors.red,soundNumber: 1),
              buildKey(backgroundColor: Colors.orange,soundNumber: 2),
              buildKey(backgroundColor: Colors.yellow,soundNumber: 3),
              buildKey(backgroundColor: Colors.green,soundNumber: 4),
              buildKey(backgroundColor: Colors.teal,soundNumber: 5),
              buildKey(backgroundColor: Colors.blue,soundNumber: 6),
              buildKey(backgroundColor: Colors.purple,soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKey({Color backgroundColor, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: backgroundColor,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  void playSound(int soundNumber) {
    AudioCache().play('note$soundNumber.wav');
  }
}
