import 'package:flutter/material.dart';
class CustomerData extends StatelessWidget {
  const CustomerData({
    super.key,
    required this.data,
    required this.value,
  });

  final String data;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            data,
            style: const TextStyle(fontSize: 18),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 18, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
