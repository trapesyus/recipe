import 'package:flutter/material.dart';
import '../constants/color_constants.dart';

class CustomDarkTheme {
  static ThemeData myDarkTheme() => ThemeData(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: ColorConstants.whiteColor),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith(
                  (states) => ColorConstants.whiteColor))),
      scaffoldBackgroundColor: ColorConstants.blackColor);
}
