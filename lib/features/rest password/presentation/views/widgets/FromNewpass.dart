import 'package:flutter/material.dart';
class FormNewPass extends StatelessWidget {
   FormNewPass({
    required this.text
  }) ;
String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 13, 0,13),
          fillColor:  Color(0xFFffffff),
          filled: true,
          focusColor:  Color(0xFFffffff),
          border: OutlineInputBorder(),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white,
                  width: 1.0,
                  style: BorderStyle.solid)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
          prefixIcon: Icon(
            Icons.remove_red_eye_outlined,
            color: Colors.grey,
          ),
          suffixIcon: Icon(
            Icons.lock,
            color: Colors.grey,
          ),
          hintText: text,
          hintTextDirection: TextDirection.rtl,
          errorStyle: TextStyle(
            color: Colors.red,
          ),
          suffixStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
        )
    );
  }
}