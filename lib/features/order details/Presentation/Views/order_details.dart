import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawssel/features/order%20details/Presentation/Views/widgets/odrer_details_card.dart';
import 'package:tawssel/features/order%20details/Presentation/Views/widgets/cancellation_reason.dart';
import 'widgets/call_customer_button.dart';
import 'widgets/customer_details.dart';
import 'widgets/order_details_list.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          style: IconButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          onPressed: () {
          },
          icon: SvgPicture.asset("images/notifications icon2.svg"),
        ),
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "تفاصيل الطلب",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 14,
          ),
          OrderDetailsCard(
            width: width,
            height: height,
            status: 'قيد التوصيل',
          ),
          const SizedBox(
            height: 18,
          ),
          const CancellationReason(),
          const SizedBox(
            height: 12,
          ),
          const OrderDetailsList(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Text(
              "بيانات العميل",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const CustomerData(
            data: 'اسم العميل',
            value: 'إبراهيم خالد احمد',
          ),
          const CustomerData(
            data: 'عنوان العميل',
            value: 'شارع 44 - السبتية - القاهره',
          ),
          const CustomerData(
            data: 'طريقة الدفع',
            value: 'تم الدفع بالفيزا',
          ),
          const CustomerData(
            data: 'رقم العميل',
            value: '01452202515',
          ),
          const SizedBox(
            height: 12,
          ),
          const CallCustomerButton(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
