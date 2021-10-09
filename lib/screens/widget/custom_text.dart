import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String? txt;
  final double? fontSize;
  final double? height;
  final Color? color;
  final Alignment? alignment;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDirection;

  CustomText({
    this.txt = "",
    this.height = 1,
    this.fontSize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.fontWeight = FontWeight.w400,
    this.textAlign,
    this.textDirection=TextDecoration.none,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt!,
      // overflow: TextOverflow.fade,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        height: height,
        decoration: textDirection,
      ),
      textAlign: textAlign,
    );
  }
}
