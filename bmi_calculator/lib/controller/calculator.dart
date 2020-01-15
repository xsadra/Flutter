import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  double _bmi;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body wieght. Try to exercise more and eat a bit less.';
    } else if (_bmi > 18) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body wieght. You can eat a bit less.';
    }
  }
}
