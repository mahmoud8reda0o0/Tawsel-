import 'package:flutter/material.dart';

class ChangeCurrentPasswordScreen extends StatelessWidget {
  const ChangeCurrentPasswordScreen({super.key});

  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    TextEditingController _oldpass = TextEditingController();
    TextEditingController _newPass = TextEditingController();
    TextEditingController _reNewPass = TextEditingController();
    bool _oldPassBool = true;
    bool _newPassBool = true;
    bool _reNewPassBool = true;
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: _height * 0.15,
              width: _width,
              color: Colors.white10,
              child: const Center(
                child: ListTile(
                  title: Text(
                    '       تغير الرقم السري ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              height: _height * 0.85,
              width: _width,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(1, 0),
                    spreadRadius: 5,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      textformfield(
                        controller: _oldpass,
                        errorTitle: "please enter your old PassWord",
                        hintTitle: '*******',
                        lableText: 'الرقم السري القديم',
                        passwordMod: !_oldPassBool,
                        type: TextInputType.number,
                        perfixicon: _oldPassBool
                            ? const Icon(
                                Icons.remove_red_eye,
                                color: Colors.blue,
                              )
                            : const Icon(Icons.remove_red_eye_outlined),
                      ),
                      textformfield(
                        controller: _newPass,
                        errorTitle: "please enter your old PassWord",
                        hintTitle: '*******',
                        lableText: 'الرقم السري الجديد',
                        passwordMod: !_newPassBool,
                        type: TextInputType.number,
                        perfixicon: _newPassBool
                            ? const Icon(
                                Icons.remove_red_eye,
                                color: Colors.blue,
                              )
                            : const Icon(Icons.remove_red_eye_outlined),
                      ),
                      textformfield(
                        controller: _reNewPass,
                        errorTitle: "please enter your old PassWord",
                        hintTitle: '*******',
                        lableText: 'تاكيد الرقم السري الجديد',
                        passwordMod: !_reNewPassBool,
                        type: TextInputType.number,
                        perfixicon: _reNewPassBool
                            ? const Icon(
                                Icons.remove_red_eye,
                                color: Colors.blue,
                              )
                            : const Icon(Icons.remove_red_eye_outlined),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[400]),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Password has been updated successfully '),
                                duration: Duration(seconds: 1),
                              ),
                            );
                          } else
                            print('enter your data');
                        },
                        child: Container(
                          height: 50,
                          width: _width * 0.95,
                          child: const Center(
                            child: Text(
                              'حفظ التغيرات',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textformfield(
      {required TextEditingController controller,
      required String errorTitle,
      required String hintTitle,
      required String lableText,
      TextInputType? type,
      bool passwordMod = false,
      Widget? perfixicon}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            lableText,
            style: const TextStyle(fontSize: 23, color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: controller,
          textAlign: TextAlign.right,
          obscureText: passwordMod,
          //style: TextStyle(color: MyColor().gray),
          keyboardType: type,
          validator: (value) {
            if (value == null || value.length < 5)
              return errorTitle;
            else
              return null;
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: perfixicon,
            hintText: hintTitle,
            hintStyle: const TextStyle(fontSize: 20),
            errorStyle: const TextStyle(fontSize: 10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.black)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.black38)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black38,
              ),
            ),
            // focusedBorder: OutlineInputBorder(
            //     borderSide: BorderSide(
            //       color: Color(0xffc2c9d1),
            //     ),
            //     borderRadius: BorderRadius.circular(10)),
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10),
            //   borderSide: BorderSide(
            //     color: Color(0xffc2c9d1),
            //   ),
            // ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
