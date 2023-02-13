import 'package:flutter/material.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/Elevetdbottomsheet.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/TextformOtp.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/sucssesbottomsheet.dart';

class bottomsheetcontainer extends StatelessWidget {
  const bottomsheetcontainer({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
          height: height * .4,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'رمز التأكيد',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'cairo'),
                        ),
                        SizedBox(
                          width: 95,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.clear,
                            ))
                      ],
                    ),
                  ),
                  Text(
                    'من فضلك أدخل رمز التأكيد المكون من 4 أرقام المرسلة علي هذا الرقم *******45',
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF343434),
                        fontFamily: 'cairo'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OTP(),
                      OTP(),
                      OTP(),
                      OTP(),
                    ],
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "إعادة إرسال الكود",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'cairo',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Elvetedbottomsheet(
                    text: 'إرسال الرمز',
                    textStyle: textstyle1,
                    color: Color(0xFFFF6600),
                    function: () {
                      Navigator.pop(context);
                      showModalBottomSheet(
                          backgroundColor: Color(0xFFF3F5F7),
                          isScrollControlled: true,
                          isDismissible: true,
                          elevation: 4,
                          enableDrag: true,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                          context: context,
                          builder: (ctx) => SingleChildScrollView(child: sucssessheetcontainer(height: height)));
                    },
                  )
                ]),
          )),
    );
  }
}
