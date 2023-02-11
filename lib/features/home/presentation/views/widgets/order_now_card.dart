import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/styles.dart';

class OrderNowCard extends StatelessWidget {
  const OrderNowCard({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: height * 0.22,
                child: SvgPicture.asset("images/delivery superhero2.svg"),
              ),
            ),
            Column(
              children: [
                const Text(
                  "استلم فلوسك \nوالتوصيل علينا",
                  textAlign: TextAlign.right,
                  style: Styles.textStyle20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "أطلب دلوقتي",
                      style: Styles.textStyle16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
