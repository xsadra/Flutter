import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        title: Text('I am Sadra'),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/img.png'),
        ),
      ),
    ),
  ));
}
