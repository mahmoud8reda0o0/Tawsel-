import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tawssel/features/SignLog/presentation/views/widget/widgetfree.dart';
import 'package:tawssel/features/home/presentation/views/home_view.dart';

import '../../../home/presentation/views/bottom_navigation_bar_view.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LogIn_s();
}

class LogIn_s extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameCon = TextEditingController();
  TextEditingController _taxNumberCon = TextEditingController();
  TextEditingController _taxPhotoCon = TextEditingController();
  TextEditingController _mobileNumberCon = TextEditingController();
  TextEditingController _emailCon = TextEditingController();
  TextEditingController _passwordCon = TextEditingController();
  TextEditingController _rePasswordCon = TextEditingController();
  bool _passwordEye = false;
  bool _repasswordEye = false;
  bool _check = false;

  Widget build(BuildContext context) {
    double _heinght = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.95),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  trailing: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_right_alt_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  title: const Text(
                    'تسجيل الدخول',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        FreeWidget().textFormField(
                            controller: _nameCon, hintText: 'الأسم '),
                        FreeWidget().textFormField(
                            controller: _taxNumberCon,
                            hintText: 'رقم السجل الضريبي'),
                        FreeWidget().textFormField(
                            controller: _taxPhotoCon,
                            hintText: "صورة السجل الضريبي ",
                            child: IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Attach Photo Path'),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.attach_file),
                            )),
                        FreeWidget().textFormField(
                            controller: _mobileNumberCon,
                            hintText: "رقم الهاتف "),
                        FreeWidget().textFormField(
                            controller: _emailCon, hintText: "البريد الألكتروني"),
                        FreeWidget().textFormField(
                          controller: _passwordCon,
                          hintText: "الرقم السري",
                          passEye: _passwordEye,
                          child: IconButton(
                              onPressed: () {
                                setState(() => _passwordEye = !_passwordEye);
                              },
                              icon: _passwordEye
                                  ? const Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.blue,
                                    )
                                  : const Icon(Icons.remove_red_eye_outlined)),
                        ),
                        FreeWidget().textFormField(
                          controller: _rePasswordCon,
                          hintText: " تاكيد الرقم السري",
                          passEye: _repasswordEye,
                          child: IconButton(
                              onPressed: () {
                                setState(() => _repasswordEye = !_repasswordEye);
                              },
                              icon: _repasswordEye
                                  ? const Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.blue,
                                    )
                                  : const Icon(Icons.remove_red_eye_outlined)),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  trailing: IconButton(
                    onPressed: () {
                      setState(() => _check = !_check);
                    },
                    icon: _check
                        ? Icon(
                            Icons.check_circle,
                            color: Colors.orange[800],
                            size: 20,
                          )
                        : Icon(
                            Icons.check_circle_outline,
                            color: Colors.orange[800],
                            size: 20,
                          ),
                  ),
                  title: const Text(
                    'تسجيل الدخول التلقائي ',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('Open Main Page'),
                        ),
                      );

                    } else
                      print('else');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange[800],
                  ),
                  child: SizedBox(
                    height: 50,
                    width: _width * 0.85,
                    child: const Text(
                      'تسجيل الدخول ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget perfixIcon(bool pass) {
    return IconButton(
        onPressed: () {
          setState(() => pass = !pass);
        },
        icon: pass
            ? const Icon(
                Icons.remove_red_eye,
                color: Colors.blue,
              )
            : const Icon(Icons.remove_red_eye_outlined));
  }
}
