import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:go_router/go_router.dart';
import 'package:tawssel/core/utils/app_router.dart';
import 'package:tawssel/features/add order screen/presentation/views/Order Page.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController names = TextEditingController()
      ..text = 'كرسبي & كرانشي';
    TextEditingController PhoneNumber = TextEditingController()
      ..text = '0102222145441';
    TextEditingController email = TextEditingController()
      ..text = 'Support@Crisp-Cranchy.com';
    TextEditingController address = TextEditingController()
      ..text = 'شارع 10 - باب الشعرية - القاهرة';

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("images/Profile Image/Group 11414.png"),
              iconSize: 159,
            ),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("images/Profile Image/Group 11387.svg"),
          ),
        ),
        backgroundColor: const Color(0xfff1f4f3),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 10, bottom: 40),
            child: Stack(children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 80.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.85,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 80.0,
                    ),
                    const Text(
                      'مطعم كريسبي&كرانشي',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 16,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(left: 310),
                            child: Text(
                              'الأسم',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 14,
                                color: Color(0xff090909),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                          ),
                          CustomField(
                              hint: 'الأسم', prefix: '', Controller: names),
                          const Padding(
                            padding: EdgeInsets.only(left: 290),
                            child: Text(
                              'رقم الهاتف',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 14,
                                color: Color(0xff090909),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                          ),
                          CustomField(
                              hint: 'رقم الهاتف',
                              prefix: '',
                              Controller: PhoneNumber),
                          const Padding(
                            padding: EdgeInsets.only(left: 270),
                            child: Text(
                              'البريد الألكتروني',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 14,
                                color: Color(0xff090909),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                          ),
                          CustomField(
                              hint: 'البريد الألكتروني',
                              prefix: '',
                              Controller: email),
                          const Padding(
                            padding: EdgeInsets.only(left: 310),
                            child: Text(
                              'العنوان',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 14,
                                color: Color(0xff090909),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                          ),
                          CustomField(
                            hint: 'العنوان',
                            prefix: '',
                            Controller: address,
                            prefixIcon: const Icon(Icons.location_on),
                            prefixIconColor: Colors.black,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff15c975),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'حفظ التغييرات',
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 14,
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.right,
                                    softWrap: false,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.deepOrange,
                                  ),
                                  onPressed: () {
                                    GoRouter.of(context).push(
                                      AppRouter.kChangeCurrentPasswordPage,
                                    );
                                  },
                                  child: const Text(
                                    'تغيير كلمة السر',
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 14,
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.right,
                                    softWrap: false,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: <Widget>[
                    ClipOval(
                        child: Image.asset(
                      'images/Profile Image/NoPath - Copy (4).png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    )),
                    Positioned(
                      bottom: 0,
                      right: 5,
                      child: SizedBox(
                        height: 45,
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "images/Profile Image/Group 11448.svg",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
