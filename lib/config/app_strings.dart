import 'package:flutter/material.dart';

class AppStrings {
  static String applicationName = 'Flutter Demo';
  static List<Color> color = [
    Colors.pinkAccent,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.deepPurple,
    Colors.red,
    Colors.lightBlue,
    Colors.red,
    Colors.redAccent,
    Colors.lightGreenAccent,
    Colors.deepPurple,
    Colors.red
  ];

  static dynamic getRandomValue({required List<dynamic> list}) =>
      (list..shuffle()).first;
}
