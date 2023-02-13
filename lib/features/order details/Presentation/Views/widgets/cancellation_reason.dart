import 'package:flutter/material.dart';
import 'package:tawssel/core/utils/constants.dart';

class CancellationReason extends StatelessWidget {
  const CancellationReason({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "سبب الألغاء",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "العميل رفض الطلب",
                style: TextStyle(
                  color: kSubTitle,
                  fontSize: 16,
                ),
              ),
            ],
          ),
           const SizedBox(width: 6,),
           Container(
             height: 60,
             width: 60,
             decoration: BoxDecoration(
               color: const Color(0xffFFD6D6),
               borderRadius: BorderRadius.circular(8),
             ),
             child: const Icon(
               Icons.cancel_outlined,
               color: Colors.red,
               size: 35,
             ),
           ),
        ],
      ),
    );
  }
}
