import 'package:flutter/material.dart';
import 'package:tawssel/features/rest%20password/presentation/views/homescreen.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/FromNewpass.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/RichText.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/customeappbar.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/imagebox.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/widgetbutton.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: backgroundcolor,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  CustomAppBar(
                    maintext: 'إنشاء كلمة مرور جديدة',
                    subtext:
                        'قم بإنشاء كلمة مرور جديدة بحيث لا تشابه كلمة المرور القديمه',
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  boximage(image: 'images/Create New Pass – 1.png'),
                  SizedBox(
                    height: height * .05,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Container(
                      child: Column(
                        children: [
                          FormNewPass(
                            text: 'كلمة المرور',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          FormNewPass(
                            text: 'تأكيد - كلمة المرور',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Button(
                    text: 'إنشاء كلمة المرور',
                  ),
                  SizedBox(
                    height: height * .2,
                  ),
                  Richspan(),
                ],
              ),
            )));
  }
}
