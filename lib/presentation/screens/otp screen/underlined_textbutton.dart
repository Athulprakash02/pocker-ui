
import 'package:flutter/material.dart';
import 'package:task/core/constants.dart';

class UnderlinedTextButton extends StatelessWidget {
  const UnderlinedTextButton({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: TextButton(
          onPressed: () {},
          child: RichText(
              text:  TextSpan(
            text: text, // Your button text
            style: const TextStyle(
              color: kWhiteColor, 
              fontWeight: FontWeight.w300,// Text color
              decoration:
                  TextDecoration.underline, // Add underline decoration
              decorationColor: kWhiteColor, // Underline color
              decorationThickness: 1.5, // Underline thickness
            ),
          ))),
    );
  }
}
