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
        backgroundColor: Colors.red.shade300,
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
  @override
  Widget build(BuildContext context) {
    return Row();
  }
}

