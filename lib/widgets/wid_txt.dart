import 'package:flutter/material.dart';

class WidText extends StatelessWidget {
  final String? title;
  final String? type;
  final Color? widColor;
  final double? fontSize;
  final String? fontFamily;
  final bool isOverflow;
  final bool isMaxLines;
  final int maxLine;
  final FontWeight fontWeight;
  final TextDecoration? textDecoration;

  const WidText({
    Key? key,
    required this.title,
    this.type = "B1",
    required this.fontFamily,
    this.isOverflow = false,
    required this.widColor,
    this.isMaxLines = false,
    this.maxLine = 3,
    this.textDecoration,
    required this.fontSize,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? "",
      overflow: isOverflow ? TextOverflow.ellipsis : null,
      textScaleFactor: 1.0,
      maxLines: isMaxLines ? maxLine : null,
      style: TextStyle(
        fontFamily: fontFamily,
        color: widColor,
        fontSize: fontSize,
        decoration: textDecoration,
        fontWeight: fontWeight,
      ),
    );
  }
}
