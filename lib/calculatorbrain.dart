import 'dart:math';

class CalculatorBrain {
  CalculatorBrain ({required this.weight, required this.height});

  final int weight;
  final int height;
  late double _bmi;

  String calculatebmi () {
    _bmi = (weight/pow(height/100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResults () {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getinterpretations () {
    if (_bmi >= 25) {
      return 'Please exercise';
    } else if (_bmi >= 18.5) {
      return 'You\'re good';
    } else {
      return 'Eat more';
    }
  }
}