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
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s24, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

// medium style

TextStyle getThinStyle(
    {double fontSize = FontSize.s13, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.thin, color);
}

// bold style

TextStyle getBoldtStyle(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

TextStyle getSemiBoldtStyle(
    {double fontSize = FontSize.s22, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}
