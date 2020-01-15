import 'package:flutter/material.dart';

import 'ui/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
          thumbColor: Color(0xFFE11555),
          overlayColor: Color(0x29EB1555),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        ),
      ),
      home: InputPage(),
    );
  }
}
