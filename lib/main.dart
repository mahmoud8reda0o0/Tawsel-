import 'package:flutter/material.dart';

import 'features/home/presentation/views/home_view_body.dart';

void main() {
  runApp(const HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
