import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tawssel/UI/Screen/SignLog/SignIn.dart';

class FreeWidget {
  Widget elevatedbottom({required BuildContext context,required bool selectcolor,required double width, required String buttonName, MaterialColor? buttonColor}) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
      },
      style: ElevatedButton.styleFrom(
        primary: selectcolor? Colors.orange[800] : Colors.white,
      ),
      child: SizedBox(
        height:47,
        width: width * 0.9,
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
  Widget backgroundScreenImage({required double height,required double width}){
    return Container(
      height: height,
      width: width,
      child: FittedBox(
          fit: BoxFit.fill,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
            child: Image(
              image: AssetImage('assets/image/signscreen.png'),
            ),
          )),
    );
  }
  Widget backgroundScreenColor({required double height,required double width}){
    return Container(
      height: height,
      width: width,
      color: Colors.black.withOpacity(0.5),
    );
  }
  Widget carouselSliderItem ({required double width,required String assetImage,required String centerTitle,required String lastTitle}){
    return Container(
      height: 280,
      width: width * 0.9,
      //color: Colors.deepPurple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            child: Image(
              image: AssetImage('assets/image/${assetImage}'),
            ),
            backgroundColor: Colors.white,
            radius: 50,
          ),
          Center(
            child: Text(
              centerTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              lastTitle,
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
  Widget FormSignIn(){
    return Form(child: Column(),);
  }

  Widget sizeBoxForm({ double? height,double? width,Widget? child}){
    return SizedBox();
  }

}
