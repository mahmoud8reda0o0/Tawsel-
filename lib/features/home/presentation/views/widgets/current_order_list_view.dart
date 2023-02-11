import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'current_order_card.dart';

class CurrentOrderListView extends StatelessWidget {
  const CurrentOrderListView({
    super.key,
    required this.width,
    required this.height,
    required this.ordersStatus,
    required this.status,
  });

  final double width;
  final double height;
  final String ordersStatus;
  final String status;

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
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 22),
            child: Text(
              ordersStatus,
              textAlign: TextAlign.right,
              style: Styles.textStyle20,
            ),
          ),
          ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CurrentOrderCard(width: width, height: height, status: status,),
              );
            },
          ),
        ],
      ),
    );
  }
}
