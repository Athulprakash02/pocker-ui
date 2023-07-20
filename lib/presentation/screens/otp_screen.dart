import 'package:flutter/material.dart';
import 'package:task/core/constants.dart';
import 'package:task/presentation/screens/bottom_nav_bar.dart';
import 'package:task/presentation/widgets/fitted_text.dart';
import 'package:task/presentation/widgets/otp_textfeild.dart';
import 'package:task/presentation/widgets/underlined_textbutton.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: loginScaffoldColor,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/title.png",
              width: size.width * .45,
            ),
            SizedBox(
              height: size.width / 8,
            ),
            SizedBox(
                width: size.width * .45,
                child: const FittedText(text: 'Please enter the OTP',fontWeight: FontWeight.w300,color: kWhiteColor,)),
            SizedBox(
              height: size.width / 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OTPTextFeild(size: size),
                const SizedBox(
                  width: 10,
                ),
                OTPTextFeild(size: size),
                const SizedBox(
                  width: 10,
                ),
                OTPTextFeild(size: size),
                const SizedBox(
                  width: 10,
                ),
                OTPTextFeild(size: size),
              ],
            ),
            SizedBox(
              height: size.width / 8,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const BottomNavBar(),
                ));
              },
              child: Image.asset(
                "assets/images/nextbutton.png",
                width: size.width * .5,
              ),
            ),
            SizedBox(
              height: size.width / 10,
            ),
            SizedBox(
              width: size.width * .3,
              child: const UnderlinedTextButton(
                text: "Resend OTP",
              ),
            )
          ],
        ),
      )),
    );
  }
}
