import 'package:flutter/material.dart';

void main() => runApp(ContactMe());

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
