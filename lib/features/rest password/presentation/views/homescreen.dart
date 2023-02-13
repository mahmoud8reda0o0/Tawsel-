import 'package:flutter/material.dart';

import 'widgets/RichText.dart';
import 'widgets/countrynumber.dart';
import 'widgets/customeappbar.dart';
import 'widgets/imagebox.dart';
import 'widgets/widgetbutton.dart';




const backgroundcolor = Color(0xFFF3F5F7);

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        backgroundColor: backgroundcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(
                maintext: 'استرجاع كلمة المرور',
                subtext:
                    'قم بإدخال رقم الهاتف أو البريد الإلكتروني لإسترجاع كلمة \nالمرور',
              ),
              SizedBox(
                height: height * 0.1,
              ),
              boximage(image: 'images/Rest Pass – 1.png'),
              SizedBox(
                height: height * .02,
              ),
              const country(),
              SizedBox(
                height: height * .01,
              ),
              Button(text: 'ارسال',
                ),
              SizedBox(
                height: height * .30,
              ),
              const Richspan()
            ],
          ),
        ),
      ),
    );
  }
}


