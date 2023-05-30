import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  CustomText(
      {super.key,
      required this.text,
      this.isBold = false,
      this.isItalic = false,
      this.isUnderline = false,
      this.color = Colors.transparent,
      this.fontSize});
  String text;
  Color color;
  double? fontSize;
  bool isUnderline;
  bool isItalic;
  bool isBold;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontStyle: isItalic ? FontStyle.italic : null,
          fontWeight: isBold ? FontWeight.bold : null,
          decoration: isUnderline ? TextDecoration.underline : null,
          color: color,
          fontSize: fontSize),
    );
  }
}
