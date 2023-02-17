import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    splashScreenNavigator();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          //color: Colors.black,
          height: 200,
          width: 200,
          child: Column(
            children: const [
              Image(
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/image/splash.png'),
              ),
              Center(
                child: Text(
                  '     تـوصـيـل - TAWSEL',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void splashScreenNavigator() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push(AppRouter.kSignOrLogPage);
      },
    );
  }
}
