import 'package:flutter/material.dart';
import 'package:task/core/constants.dart';
import 'package:task/presentation/screens/otp%20screen/otp_screen.dart';
import 'package:task/presentation/widgets/fitted_text.dart';
import 'package:task/presentation/screens/login%20screen/widgets/login_text_feild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              width: size.width / 1.5,
            ),
            SizedBox(
              height: size.width / 18,
            ),
            SizedBox(
                width: size.width * .7,
                child: const FittedText(text: 'Enter mobile number and login',fontWeight: FontWeight.w300,color: kWhiteColor,)),
            SizedBox(
              height: size.width / 18,
            ),
            LoginTextFeild(size: size,hintText: 'Mobile number'),
            SizedBox(
              height: size.width / 9,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const OTPScreen(),
                  ));
                },
                child: Image.asset(
                  "assets/images/nextbutton.png",
                  width: size.width * .5,
                )),
            SizedBox(
              height: size.width / 5,
            ),
            Image.asset(
              "assets/images/indian pocker.png",
              width: size.width * .25,
            ),
          ],
        ),
      )),
    );
  }
}


