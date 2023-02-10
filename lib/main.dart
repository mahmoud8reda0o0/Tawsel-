import 'package:flutter/material.dart';
import 'package:tawssel/UI/Screen/SignLog/LogIn.dart';
import 'package:tawssel/UI/Screen/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tawssel',
      debugShowCheckedModeBanner: false,

      home: Splash_Screen.SplashScreen(),
    );
  }
}
