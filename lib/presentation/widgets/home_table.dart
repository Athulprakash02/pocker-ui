
import 'package:flutter/material.dart';
import 'package:task/core/constants.dart';
import 'package:task/presentation/widgets/fitted_text.dart';

class HomeTable extends StatelessWidget {
  const HomeTable({
    super.key,
    required this.size, required this.titleText, required this.text,
  });

  final Size size;
  final String titleText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
        SizedBox(
         width: size.width * .5,
         child:  FittedText(
           text: titleText,
           fontWeight: FontWeight.bold,
           color: kBlackColor,
         )),
         
         Padding(
           padding:  EdgeInsets.only(top: 5),
           child: Stack(
             alignment: Alignment.center,
             children: [
               Container(
                 width: size.width*.6,
                 height: size.width*.3,
                
                 decoration: BoxDecoration(
                   // color: Colors.red,
                   // borderRadius: BorderRadius.circular(55),
                   image: DecorationImage(image: AssetImage("assets/images/table.png"),fit: BoxFit.fill)
                 ),
               ),
               Positioned(
                 
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     SizedBox(
                       width: size.width*.3,
                       child: FittedText(text: text, fontWeight: FontWeight.bold, color: kWhiteColor)),
                       SizedBox(height: 5,),
                       SizedBox(
                         height: size.width*.09,
                         child: ElevatedButton(
                           style: ButtonStyle(
                             elevation: MaterialStatePropertyAll(10),
                             
                             backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 243,202,84)),
                             shadowColor: MaterialStatePropertyAll(kBlackColor)
                           ),
                           onPressed: () {
                           
                         }, child: FittedText(text: 'BLOCK SEAT', fontWeight: FontWeight.normal, color: kWhiteColor)),
                       )
                     // Text('20K - 100/200',style: TextStyle(color: kWhiteColor),)
                   ],
                 ),
               )
             ],
           ),
         )
     ],
    );
  }
}
