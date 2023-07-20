import 'package:flutter/material.dart';

class FittedText extends StatelessWidget {
  const FittedText({
    super.key, required this.text, required this.fontWeight, required this.color,
  });
  final String text;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        child: Text(
      text,
      style:  TextStyle(
          color: color, fontWeight: fontWeight),
    ));
  }
}
