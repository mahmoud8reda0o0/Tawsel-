import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class OrderComponents extends StatelessWidget {
  const OrderComponents({
    super.key,
    required this.name,
    required this.price,
  });

  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$price ج.م",
            style: const TextStyle(
              color: kSubTitle,
              fontSize: 16,
            ),
          ),
          Text(
            name,
            style:  const TextStyle(
              color: kSubTitle,
              fontSize: 16,
            ),
          ),

        ],
      ),
    );
  }
}
