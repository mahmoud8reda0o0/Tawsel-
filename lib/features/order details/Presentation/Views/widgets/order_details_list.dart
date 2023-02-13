import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'order_components.dart';
import 'total_price.dart';

class OrderDetailsList extends StatelessWidget {
  const OrderDetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "تفاصيل الطلب",
            style: Styles.textStyle18,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "المنتجات",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const OrderComponents(
          name: 'بيتزا ايطالي - جبن',
          price: '60',
        ),
        const OrderComponents(
          name: 'كريب شيش طاووق',
          price: '60',
        ),
        const OrderComponents(
          name: 'برجر لحوم حار',
          price: '60',
        ),
        const TotalPrice(name: "السعر الكلي", price: "120"),
        const TotalPrice(name: "خدمة التوصيل", price: "40"),
        Center(
          child: SizedBox(
            width: width * 0.9,
            child: const Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
