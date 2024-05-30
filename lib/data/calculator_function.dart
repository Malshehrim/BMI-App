import 'dart:math';

class Calculator {
  Calculator({
    required this.wight,
    required this.hight,
  });
  final int wight;
  final int hight;
  late double _bmi;
  String calculateBMI() {
    _bmi = wight / pow(hight / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, Try to excrcise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight, Good body!.';
    } else {
      return 'You have a lower than normal body weight, You must to eat more.';
    }
  }
}
