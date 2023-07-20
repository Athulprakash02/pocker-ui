
import 'package:flutter/material.dart';
import 'package:task/core/constants.dart';

class LoginTextFeild extends StatelessWidget {
  
  const LoginTextFeild({
    super.key,
    required this.size, required this.hintText,
    
  });

  final Size size;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * .7,
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: kBlackColor),
            fillColor: kWhiteColor,
            filled: true),
      ),
    );
  }
}