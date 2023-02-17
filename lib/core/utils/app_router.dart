import 'package:go_router/go_router.dart';
import 'package:tawssel/features/order%20details/Presentation/Views/order_details.dart';

import '../../features/Profile/Presentation/Views/Profile_Screen.dart';
import '../../features/SignLog/presentation/views/LogIn.dart';
import '../../features/SignLog/presentation/views/SignIn.dart';
import '../../features/SignLog/presentation/views/sginORlog.dart';
import '../../features/SplashScreen/SplashScreen.dart';
import '../../features/add order screen/presentation/views/Order Page.dart';
import '../../features/home/presentation/views/bottom_navigation_bar_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/rest password/presentation/views/homescreen.dart';
import '../../features/rest password/presentation/views/newpassword.dart';

abstract class AppRouter {
  static const kBottomNavigationBarPage = '/BottomNavigationBarPage';
  static const kHomePage = '/HomeView';
  static const kOrderDetailsPage = '/OrderDetailsPage';
  static const kAddOrderPage = '/AddOrderPage';
  static const kSignOrLogPage = '/SignOrLogPage';
  static const kProfilePage = '/ProfilePage';
  static const kRestPasswordPage = '/RestPasswordPage';
  static const kSignInPage = '/SignInPage';
  static const kLogInPage = '/LogInPage';
  static const kNewPasswordPage = '/NewPasswordPage';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSignOrLogPage,
        builder: (context, state) => SignOrLog(),
      ),
      GoRoute(
        path: kSignInPage,
        builder: (context, state) => SignIn(),
      ),
      GoRoute(
        path: kLogInPage,
        builder: (context, state) => const LogIn(),
      ),
      GoRoute(
        path: kBottomNavigationBarPage,
        builder: (context, state) => const BottomNavigationBarView(),
      ),
      GoRoute(
        path: kHomePage,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kOrderDetailsPage,
        builder: (context, state) => const OrderDetails(),
      ),
      GoRoute(
        path: kAddOrderPage,
        builder: (context, state) => const NewOrder(),
      ),
      GoRoute(
        path: kProfilePage,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: kRestPasswordPage,
        builder: (context, state) => const Homescreen(),
      ),
      GoRoute(
        path: kNewPasswordPage,
        builder: (context, state) => const NewPassword(),
      ),
    ],
  );
}
