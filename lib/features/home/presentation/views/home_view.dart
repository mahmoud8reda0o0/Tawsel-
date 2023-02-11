import 'package:flutter/material.dart';
import 'widgets/current_order_list_view.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/order_now_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({
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
            OrderNowCard(height: height),
            const SizedBox(
              height: 32,
            ),
            CurrentOrderListView(
              width: width,
              height: height,
              ordersStatus: 'الطلبات الحالية',
              status: 'قيد التوصيل',
            )
          ],
        ),
      ),
    );
  }
}
