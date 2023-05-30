import 'package:flutter/material.dart';
import 'package:recipe/core/constants/color_constants.dart';

// ignore: must_be_immutable
class CustomLabelText extends StatelessWidget {
  CustomLabelText(
      {super.key,
      required this.label,
      this.isItalic = false,
      this.isBold = false,
      this.isColorWhite = false,
      this.color = false,
      this.fontSize = 18});

  String label;
  bool isColorWhite;
  bool color;
  bool isItalic;
  bool isBold;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
          fontStyle: isItalic ? FontStyle.italic : null,
          // fontFamily: TextFonts.fontChoice[Preferences.fontName],
          fontSize: fontSize,
          color: isColorWhite
              ? Colors.white
              : color
                  ? ColorConstants.blackColor
                  : ColorConstants.blackColor,
          fontWeight: FontWeight.bold),
    );
  }
}
