import 'package:flutter/material.dart';

const textstylesub = TextStyle(
    color: Color(0xFF7A7A7A),
    fontSize: 15,
    fontWeight: FontWeight.bold,
    height: 1);
const textstylemain = TextStyle(
  color: Color(0xFF1E1E1E),
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

class CustomAppBar extends StatelessWidget {
  final String maintext;
  final String subtext;

  const CustomAppBar({required this.maintext, required this.subtext});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                maintext,
                style: textstylemain,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Container(
                  width: width * 0.08,
                  height: height * 0.04,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFFFFFFF)),
                  child: IconButton(
                    splashColor: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_forward,
                      color: Colors.black87,size: 20,

                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(
              subtext,
              style: textstylesub,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
