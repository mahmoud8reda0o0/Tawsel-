import 'package:flutter/material.dart';
import 'widgets/current_order_list_view.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/order_now_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: ListView(
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 14,
          ),
          OrderNowCard(height: height),
          const SizedBox(
            height: 32,
          ),
          CurrentOrderListView(width: width, height: height)
        ],
      ),
    );
  }
}

