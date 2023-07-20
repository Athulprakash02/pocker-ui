import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/home_table.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      // backgroundColor: kWhiteColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/banner.jpeg"),
            SizedBox(
              height: size.width / 16,
            ),
           HomeTable(size: size,titleText: '2 Tables running at present', text: '20K - 100/200',),
           SizedBox(height: size.width/12,),
           HomeTable(size: size,titleText: '3 Tables running at present', text: '10K - 100/100',),
          ],
        ),
      )),
    );
  }
}
