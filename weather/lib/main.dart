import 'package:flutter/material.dart';
import 'package:weather/ui/loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Loading(),
    );
  }
}
