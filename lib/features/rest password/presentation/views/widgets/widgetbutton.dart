import 'package:flutter/material.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/firstbottomsheet.dart';

class Button extends StatelessWidget {
  Button({
    required this.text,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: (Size(380, 48)),
          primary: Color(0xFFFF6600),
        ),
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Color(0xFFF3F5F7),
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              context: context,
              builder: (ctx) => bottomsheetcontainer(height: height));
        },
        child: Text(
          "${text}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ));
  }
}
