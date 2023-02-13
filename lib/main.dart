import 'package:flutter/material.dart';
import 'package:tawssel/features/SplashScreen/SplashScreen.dart';
import 'package:tawssel/features/rest%20password/presentation/views/homescreen.dart';
import 'features/home/presentation/views/bottom_navigation_bar_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        body: Homescreen(),
        //Splash_Screen.SplashScreen(),
      ),
    );
  }
}
