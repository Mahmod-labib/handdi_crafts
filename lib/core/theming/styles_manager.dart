import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle(
    {required fontSize, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// medium style

TextStyle getMediumStyle(
    {required fontSize, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

// medium style

TextStyle getThinStyle(
    {required fontSize, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.thin, color);
}

// bold style

TextStyle getBoldtStyle(
    { required fontSize , required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

TextStyle getSemiBoldtStyle(
    { required double fontSize , required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}
