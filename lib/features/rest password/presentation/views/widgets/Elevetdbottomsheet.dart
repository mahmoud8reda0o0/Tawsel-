import 'package:flutter/material.dart';
const textstyle1=TextStyle(
fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white
);
const textstyle2=TextStyle(
    fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xFF535353)
);
class Elvetedbottomsheet extends StatelessWidget {
   Elvetedbottomsheet({
    this.text,this.color,this.textStyle,this.function
  });
String ?text;
Color ?color;
TextStyle? textStyle;
Function() ?function;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: (Size(343, 48)),
        primary:color,
      ), child: Text("$text",style: textStyle,),
      onPressed:function
    );
  }
}