import 'package:flutter/material.dart';
import 'package:tawssel/core/utils/styles.dart';
import 'current_order_card.dart';

class CurrentOrderListView extends StatelessWidget {
  const CurrentOrderListView({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20, top: 12),
            child: Text(
              "الطلبات الحالية",
              textAlign: TextAlign.right,
              style: Styles.textStyle22,
            ),
          ),
          ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CurrentOrderCard(width: width, height: height),
              );
            },
          ),
        ],
      ),
    );
  }
}
