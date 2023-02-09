import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tawssel/UI/widget/widgetfree.dart';

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
      body: Stack(
        children: [
          FreeWidget().backgroundScreenImage(height: _height, width: _width),
          FreeWidget().backgroundScreenColor(height: _height, width: _width),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image(
                    image: AssetImage('assets/image/splash.png'),
                  ),
                ),
              ),
              Text(
                'تسجيل الدخول ',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
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
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'رقم الهاتف ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
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
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                              onPressed: () {
                                setState(() => _passwordEye = !_passwordEye);
                              },
                              icon: _passwordEye
                                  ? Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.blue,
                                    )
                                  : Icon(Icons.remove_red_eye_outlined)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'الرقم السري ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Open Forget Password Pages'),
                            ),
                          );
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'نسيت كلمة السر ؟',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('done if'),
                                duration: Duration(seconds: 1),
                              ),
                            );
                          } else
                            print('else');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[800],
                        ),
                        child: SizedBox(
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
                      SizedBox(height: 40,)
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
