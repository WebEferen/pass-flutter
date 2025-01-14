import 'package:flutter/material.dart';

// ignore: public_member_api_docs
class ColorHelper {
  // ignore: public_member_api_docs
  static Color convertToColor(String rgbCssColor) {
    if (rgbCssColor.isEmpty) {
      return Color.fromRGBO(255, 255, 255, 1);
    }
    var regExp = RegExp(r'rgb\((\d{1,3}), (\d{1,3}), (\d{1,3})\)');
    var colorsMatch = regExp.firstMatch(rgbCssColor);
    if (colorsMatch == null) {
      return Color.fromRGBO(255, 255, 255, 1);
    }
    var red = int.parse(colorsMatch.group(1)!);
    var green = int.parse(colorsMatch.group(2)!);
    var blue = int.parse(colorsMatch.group(3)!);

    return Color.fromRGBO(red, green, blue, 1);
  }

  // ignore: public_member_api_docs
  static String convertFromColor(Color? color) {
    if (color == null) return 'rgb(255,255,255)';
    return 'rgb(${color.red}, ${color.green}, ${color.blue})';
  }
}
