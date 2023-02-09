import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Card(
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(Icons.notifications_active_rounded),
        ),
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
