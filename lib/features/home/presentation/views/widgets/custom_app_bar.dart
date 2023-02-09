import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBarForHomeScreen extends StatelessWidget {
  const CustomAppBarForHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {},
        icon: SvgPicture.asset("images/notifications icon2.svg"),
      ),
      title: const Text(
        "برجر كينج",
        textAlign: TextAlign.right,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            "شارع10 - باب الشعرية - القاهرة",
            textAlign: TextAlign.right,
          ),
          Icon(Icons.location_on),
        ],
      ),
      trailing: CircleAvatar(
        backgroundColor: Colors.white,
        child: Image.asset("images/restaurantName.png"),
      ),
    );
  }
}
