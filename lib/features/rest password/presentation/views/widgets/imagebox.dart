import 'package:flutter/material.dart';
class boximage extends StatelessWidget {
   boximage({
    required this.image
  }) ;
  String image;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      // width: 168,
      // height: 168,
      height: height*0.22,
      width: width*0.43,
      child: Image.asset(image),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
          Border.all(color: Color(0xFFC6C6C6).withOpacity(0.5), width: 1),
          borderRadius: BorderRadius.circular(22)),
    );
  }
}