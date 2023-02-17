import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FreeWidget {
  Widget elevatedbottom(
      {required BuildContext context,
      required bool selectcolor,
      required double width,
      required String buttonName,
        required Color buttonColor22,
      MaterialColor? buttonColor,
      required var page}) {
    return ElevatedButton(
      onPressed: () {
         GoRouter.of(context).push(page);
      },
      style: ElevatedButton.styleFrom(
        primary: selectcolor ? Colors.orange[800] : Colors.white,
      ),
      child: SizedBox(
        height: 47,
        width: width * 0.9,
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: buttonColor22),
          ),
        ),
      ),
    );
  }

  Widget backgroundScreenImage(
      {required double height, required double width}) {
    return Container(
      height: height,
      width: width,
      child: FittedBox(
          fit: BoxFit.fill,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
            child: const Image(
              image: AssetImage('assets/image/signscreen.png'),
            ),
          )),
    );
  }

  Widget backgroundScreenColor(
      {required double height, required double width}) {
    return Container(
      height: height,
      width: width,
      color: Colors.black.withOpacity(0.5),
    );
  }

  Widget carouselSliderItem(
      {required double width,
      required String assetImage,
      required String centerTitle,
      required String lastTitle}) {
    return Container(
      height: 280,
      width: width * 0.9,
      //color: Colors.deepPurple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            child: Image(
              image: AssetImage('assets/image/${assetImage}'),
            ),
            backgroundColor: Colors.white,
            radius: 50,
          ),
          Center(
            child: Text(
              centerTitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              lastTitle,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

  Widget FormSignIn() {
    return Form(
      child: Column(),
    );
  }

  Widget textFormField(
      {required TextEditingController controller,
      String? hintText,
      bool passEye = false,
      Widget? child,
      TextInputType? type}) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          validator: (value) {
            if (value == null || value.length < 5)
              return 'اعد ادخال البيانات صحيحة ';
            else
              return null;
          },
          textAlign: TextAlign.right,
          obscureText: !passEye,
          keyboardType: type,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: child,
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.white10,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.yellowAccent)),
          ),
        ),
        const SizedBox(
          height: 8,
        )
      ],
    );
  }

  Widget sizeBoxForm({double? height, double? width, Widget? child}) {
    return const SizedBox();
  }
}
