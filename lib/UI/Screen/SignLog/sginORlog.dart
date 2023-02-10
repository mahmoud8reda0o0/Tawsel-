import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tawssel/UI/Screen/SignLog/LogIn.dart';
import 'package:tawssel/UI/Screen/SignLog/SignIn.dart';
import 'package:tawssel/UI/widget/widgetfree.dart';

class SignOrLog extends StatefulWidget {
  State<StatefulWidget> createState() => SignOrLog_s();
}

class SignOrLog_s extends State<SignOrLog> with TickerProviderStateMixin {
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          FreeWidget().backgroundScreenImage(height: _height, width: _width),
          FreeWidget().backgroundScreenColor(height: _height, width: _width),
          Column(
            children: [
              SizedBox(
                height: 440,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 200,
                width: double.infinity,
                //color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FreeWidget().elevatedbottom(
                      page: SignIn(),
                      context: context,
                      selectcolor: true,
                      width: _width,
                      buttonName: 'تسجيل الدخول',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FreeWidget().elevatedbottom(
                      page: LogIn(),
                      context: context,
                        selectcolor: false,
                        width: _width,
                        buttonName: 'تسجيل جديد'),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Container(
                  height: 360,
                  width: _width * 0.95,
                  //color: Colors.blue,
                  child: CarouselSlider(
                    items: [
                      FreeWidget().carouselSliderItem(
                          width: _width,
                          assetImage: 'sign1.png',
                          centerTitle: 'إستلام الطلب',
                          lastTitle: 'هيتم إستلام طلبك من خلال أحد السائقين اللي هتختارهم'),
                      FreeWidget().carouselSliderItem(
                          width: _width,
                        assetImage: 'sign2.png',
                        centerTitle:'التوصيل و التسليم',
                        lastTitle: 'بعد استلام أرباحك هيقوم أحد السائقين بتوصيل طلبك للعميل',
                      ),
                      FreeWidget().carouselSliderItem(
                          width: _width,
                        assetImage:'sign3.png' ,
                        centerTitle: 'تسليم الأرباح ',
                        lastTitle:'هتاخد تكاليف الطلب وأنت في مكانك وسيب الباقي علينا' ,
                      ),
                    ],
                    options: CarouselOptions(
                      pageSnapping: true,
                      viewportFraction: 1,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 1)
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
