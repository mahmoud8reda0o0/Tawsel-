import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tawssel/core/utils/app_router.dart';
import 'package:tawssel/features/SignLog/presentation/views/widget/widgetfree.dart';

import '../../../home/presentation/views/bottom_navigation_bar_view.dart';
import '../../../rest password/presentation/views/homescreen.dart';

class SignIn extends StatefulWidget {
  State<StatefulWidget> createState() => SignIn_s();
}

class SignIn_s extends State<SignIn> {
  bool _passwordEye = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _phoneCon = TextEditingController();
  TextEditingController _passwordCon = TextEditingController();

  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            FreeWidget().backgroundScreenImage(height: _height, width: _width),
            FreeWidget().backgroundScreenColor(height: _height, width: _width),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: _height * 0.15,
                ),
                const Center(
                  child: SizedBox(
                    height: 180,
                    width: 180,
                    child: Image(
                      image: AssetImage('assets/image/splash.png'),
                    ),
                  ),
                ),
                const Text(
                  'تسجيل الدخول ',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'قم بتسجيل الدخول للمتابعة ',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.length < 11)
                              return 'اعيد إدخال رقم الهاتف ';
                            else
                              return null;
                          },
                          textAlign: TextAlign.right,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'رقم الهاتف ',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        sizedBox(context),
                        TextFormField(
                          controller: _passwordCon,
                          validator: (value) {
                            if (value == null || value.length < 11)
                              return 'أدخل الرقم السري صحيح ';
                            else
                              return null;
                          },
                          textAlign: TextAlign.right,
                          obscureText: !_passwordEye,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                                onPressed: () {
                                  setState(() => _passwordEye = !_passwordEye);
                                },
                                icon: _passwordEye
                                    ? const Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.blue,
                                      )
                                    : const Icon(
                                        Icons.remove_red_eye_outlined)),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'الرقم السري ',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Open Forget Password Pages'),
                              ),
                            );
                            GoRouter.of(context).push(
                              AppRouter.kRestPasswordPage,
                            );
                          },
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'نسيت كلمة السر ؟',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        sizedBox(context),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Open main Page'),
                                  duration: Duration(seconds: 1),
                                ),
                              );
                              GoRouter.of(context).go(
                                AppRouter.kBottomNavigationBarPage,
                              );
                            } else
                              print('else');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange[800],
                          ),
                          child: const SizedBox(
                            width: 500,
                            height: 50,
                            child: Center(
                              child: Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget sizedBox(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.01,
    );
  }
}
