
import 'package:flutter/material.dart';
import 'package:task/core/constants.dart';

class OTPTextFeild extends StatelessWidget {
  const OTPTextFeild({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size.width*.12,height: size.width*.12,child: const TextField(
     keyboardType: TextInputType.number,
     decoration: InputDecoration(
      border: OutlineInputBorder(
        
        borderRadius: BorderRadius.zero
      ),
       fillColor: kWhiteColor,
       filled: true,
       
     ),
    ),);
  }
}