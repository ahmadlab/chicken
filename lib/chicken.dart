library chicken;

import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String colorValue = Colors.black.toString(); // Nilai default
  if (arguments.contains('--color')) {
    final index = arguments.indexOf('--color');
    if (index < arguments.length - 1) {
      colorValue = arguments[index + 1];
      colorValue = colorValue.replaceAll('--color=', '');
    }
  }

  //chickenGenerator(colorValue);
  print('Class Created');
}
