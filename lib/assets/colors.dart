import 'package:flutter/material.dart';

class AppColorsTheme {
  Color primarySwatch;
  Color titleBarGradientStartColor;
  Color titleBarGradientEndColor;
  Color textColor;
  Color secondaryGradientColor;

  AppColorsTheme({this.primarySwatch, this.titleBarGradientStartColor, this.titleBarGradientEndColor, this.textColor, this.secondaryGradientColor});

  static final AppColorsTheme myTheme = new AppColorsTheme(
    primarySwatch: Colors.pink,
    titleBarGradientStartColor : Colors.amber,
    titleBarGradientEndColor: Colors.amberAccent,
    textColor: Colors.black,
    secondaryGradientColor: Colors.green
  );
  
}