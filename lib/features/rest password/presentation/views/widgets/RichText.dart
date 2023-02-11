import 'package:flutter/material.dart';
class Richspan extends StatelessWidget {
  const Richspan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'العودة ',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              )),
          TextSpan(
              text: ' إلي ',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              )),
          TextSpan(
              text: ' تسجيل الدخول ',
              style: TextStyle(
                color: Color(0xFFFF6600),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )),
        ]));
  }
}