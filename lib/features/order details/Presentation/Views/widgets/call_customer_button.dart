import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CallCustomerButton extends StatelessWidget {
  const CallCustomerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.9,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Color(0xff2680EB)),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "اتصال بالعميل ",
                style: TextStyle(
                  color: Color(0xff2680EB),
                  fontSize: 18,
                ),
              ),
              SvgPicture.asset("images/phone call.svg")
            ],
          ),
        ),
      ),
    );
  }
}
