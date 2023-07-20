import 'package:flutter/material.dart';
import 'package:task/presentation/screens/login%20screen/login_screen.dart';

void main() {

  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 243,202,84),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.red
        )
      ),
      home: LoginScreen(),
    );
  }
}