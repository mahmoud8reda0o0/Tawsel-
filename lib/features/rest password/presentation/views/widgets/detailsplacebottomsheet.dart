import 'package:flutter/material.dart';
class containerplace extends StatelessWidget {
  containerplace({
    super.key,required this.text
  });

  bool _isChecked = true;
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFffffff),
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(5)),
        width: 400,
        height: 55,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,0,0,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('20 ج.م',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15
                ),
              ),
              Row(
                children: [
                  Text('$text',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  ),
                  Checkbox(
                      activeColor: Color(0xFFffffff),
                      side: BorderSide(color: Colors.deepOrange),
                      checkColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      value: _isChecked,
                      onChanged: (value) {
                        _isChecked = value!;
                      })
                ],
              )

            ],
          ),
        ),

      ),
    );
  }
}
