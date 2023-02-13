import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../SignLog/presentation/views/sginORlog.dart';


class Splash_Screen {
  static SplashScreen() {
    return AnimatedSplashScreen(

      splashIconSize: 300,
      splash: Container(
       //color: Colors.black,
        height: 200,
        width: 200,
        child: Column(
          children: const [
            Image(
              fit:BoxFit.fitHeight,
              image: AssetImage('assets/image/splash.png'),
            ),
            Center(child: Text('     تـوصـيـل - TAWSEL',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),)

          ],
        ),
      ),
      nextScreen: SignOrLog(),
    );
  }
}
