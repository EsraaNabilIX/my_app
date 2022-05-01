import 'package:flutter/material.dart';
import 'package:my_app/presentation/resources/font_manger.dart';

TextStyle _getTextStale(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: FontConstant.fontFamily,
      color: color);
}

//regular style
TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStale(fontSize, FontWeightManger.regular, color);
}

//medium style
TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStale(fontSize, FontWeightManger.medium, color);
}

//light style
TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStale(fontSize, FontWeightManger.light, color);
}

//semiBold style
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStale(fontSize, FontWeightManger.semiBold, color);
}

//Bold style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStale(fontSize, FontWeightManger.bold, color);
}
