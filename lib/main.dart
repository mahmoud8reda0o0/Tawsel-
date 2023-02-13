
import 'package:flutter/material.dart';
import 'package:tawssel/features/Profile/Presentation/Views/Profile_Screen.dart';
import 'package:tawssel/features/SplashScreen/SplashScreen.dart';
import 'package:tawssel/features/add order screen/presentation/views/Order Page.dart';

import 'features/rest password/presentation/views/homescreen.dart';


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
      home:   Scaffold(
        body:  ProfileScreen(),
        //Kareem
        //Splash_Screen.SplashScreen(),
      ),
    );
  }
}
