import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double? fontSize;
  final Color color;
  final TextAlign? textAlign;
  const AppText({
    Key? key,
    required this.text,
    this.fontWeight = FontWeight.bold,
    this.fontSize,
    this.color = Colors.black,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
      textAlign: textAlign,
    );
  }
}
