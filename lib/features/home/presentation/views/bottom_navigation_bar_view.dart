import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Profile/Presentation/Views/Profile_Screen.dart';
import '../../../add order screen/presentation/views/Order Page.dart';
import 'home_view.dart';
import 'orders_history_view.dart';

class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  int currentIndex = 0;

  List<Widget> body = [
    const HomeView(),
    const OrdersHistoryView(),
    NewOrder(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepOrange,
        backgroundColor: Colors.transparent,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              "images/bottom navigation bar icons/home.svg",
            ),
            activeIcon: SvgPicture.asset(
              "images/bottom navigation bar icons/home.svg",
              colorFilter: const ColorFilter.mode(
                Colors.deepOrange,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              "images/bottom navigation bar icons/box alt.svg",
            ),
            activeIcon: SvgPicture.asset(
              "images/bottom navigation bar icons/box alt.svg",
              colorFilter: const ColorFilter.mode(
                Colors.deepOrange,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              "images/bottom navigation bar icons/add.svg",
            ),
            activeIcon: SvgPicture.asset(
              "images/bottom navigation bar icons/add.svg",
              colorFilter: const ColorFilter.mode(
                Colors.deepOrange,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              "images/bottom navigation bar icons/user.svg",
            ),
            activeIcon: SvgPicture.asset(
              "images/bottom navigation bar icons/user.svg",
              colorFilter: const ColorFilter.mode(
                Colors.deepOrange,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body: body[currentIndex],
    );
  }
}
