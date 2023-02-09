import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tawssel/UI/Screen/SignLog/sginORlog.dart';

class Splash_Screen {
  static SplashScreen() {
    return AnimatedSplashScreen(

      splashIconSize: 300,
      splash: Container(
       //color: Colors.black,
        height: 200,
        width: 200,
        child: Column(
          children: [
            Image(
              fit:BoxFit.fitHeight,
              image: AssetImage('assets/image/splash.png'),
            ),
            Center(child: Text(' توصيل ',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),)

          ],
        ),
      ),
      nextScreen: SignOrLog(),
    );
  }
}
