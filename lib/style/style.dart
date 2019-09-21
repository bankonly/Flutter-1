import 'package:flutter/material.dart';

class TextStyles {
  static txtStyle(
      Color colorsname, FontWeight fontWeight, String font, double size) {
    return TextStyle(
        color: colorsname,
        fontFamily: font != null ? font : 'main',
        fontWeight: fontWeight != null ? fontWeight : null,
        fontSize: size);
  }
}

class Borders {
  static borderTop(Color colorsname, double size) {
    return Border(top: BorderSide(width: size, color: colorsname));
  }
  static borderBottom(Color colorsname, double size) {
    return Border(bottom: BorderSide(width: size, color: colorsname));
  }
  static borderLef(Color colorsname, double size) {
    return Border(left: BorderSide(width: size, color: colorsname));
  }
  static borderRight(Color colorsname, double size) {
    return Border(right: BorderSide(width: size, color: colorsname));
  }
}

class Space{
  static spaceall(double left,double right,double top,double bottom){
    return EdgeInsets.only(left: left,right: right,top: top,bottom: bottom);
  }
}