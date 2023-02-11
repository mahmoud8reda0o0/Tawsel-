import 'package:flutter/material.dart';
import 'widgets/current_order_list_view.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/history_buttons_list_view.dart';

class OrdersHistoryView extends StatelessWidget {
  const OrdersHistoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const CustomAppBarForHomeScreen(),
            const SizedBox(
              height: 14,
            ),
            const HistoryButtonsListView(),
            const SizedBox(
              height: 32,
            ),
            CurrentOrderListView(
              width: width,
              height: height,
              ordersStatus: 'الطلبات الحالية',
              status: 'ٌقيد التوصيل',
            ),
            const SizedBox(
              height: 8,
            ),
            CurrentOrderListView(
              width: width,
              height: height,
              ordersStatus: 'طلبات منتهية',
              status: 'مكتمل',
            ),
          ],
        ),
      ),
    );
  }
}
