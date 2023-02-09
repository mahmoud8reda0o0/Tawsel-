import 'package:flutter/material.dart';
import 'package:tawssel/core/utils/constants.dart';
import 'package:tawssel/core/utils/styles.dart';


class CurrentOrderCard extends StatelessWidget {
  const CurrentOrderCard({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 12, right: 12, left: 12, bottom: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "قيد التوصيل",
                  style: Styles.textStyle18.copyWith(
                    color: Colors.deepOrange,
                  ),
                ),
                const Text(
                  "رقم الطلب#25414",
                  style: Styles.textStyle18,
                ),
              ],
            ),
            SizedBox(
              width: width * 0.85,
              child: const Divider(
                thickness: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "شارع44 - السبتية - القاهرة",
                  style: Styles.textStyle14,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.deepOrange,
                  size: 18,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "11:00 , 20/10/2021",
                  style: Styles.textStyle12,
                ),
                Icon(
                  Icons.watch_later_outlined,
                  color: Colors.grey,
                  size: 18,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  "30ج.م ",
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  " : التكلفة",
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: SizedBox(
                height: height * 0.06,
                width: width * 0.8,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kButtonColor1,
                    ),
                    onPressed: () {},
                    child: Text(
                      "عرض التفاصيل",
                      style: Styles.textStyle16.copyWith(
                          color: kTextGrey, fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
