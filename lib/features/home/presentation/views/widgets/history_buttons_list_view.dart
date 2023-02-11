import 'package:flutter/material.dart';

int? isClicked = 3;

class HistoryButtonsListView extends StatefulWidget {
  const HistoryButtonsListView({
    super.key,
  });

  @override
  State<HistoryButtonsListView> createState() => _HistoryButtonsListViewState();
}

class _HistoryButtonsListViewState extends State<HistoryButtonsListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 44,
            width: 123,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isClicked == 1 ? Colors.deepOrange : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isClicked = 1;
                });
              },
              child: Text(
                "قيد التوصيل",
                style: isClicked == 1
                    ? const TextStyle(
                        color: Colors.white,
                      )
                    : const TextStyle(
                        color: Colors.black,
                      ),
              ),
            ),
          ),
          SizedBox(
            height: 44,
            width: 123,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isClicked == 2 ? Colors.deepOrange : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isClicked = 2;
                });
              },
              child: Text(
                "الطلبات الحالية",
                style: isClicked == 2
                    ? const TextStyle(
                        color: Colors.white,
                      )
                    : const TextStyle(
                        color: Colors.black,
                      ),
              ),
            ),
          ),
          SizedBox(
            height: 44,
            width: 123,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isClicked == 3 ? Colors.deepOrange : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isClicked = 3;
                });
              },
              child: Text(
                "كل الطلبات",
                style: isClicked == 3
                    ? const TextStyle(
                        color: Colors.white,
                      )
                    : const TextStyle(
                        color: Colors.black,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
