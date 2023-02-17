import 'package:go_router/go_router.dart';
import 'package:tawssel/features/order%20details/Presentation/Views/order_details.dart';

import '../../features/SignLog/presentation/views/sginORlog.dart';
import '../../features/SplashScreen/SplashScreen.dart';
import '../../features/add order screen/presentation/views/Order Page.dart';
import '../../features/home/presentation/views/home_view.dart';


abstract class AppRouter {
  static const kHomePage = '/HomeView';
  static const kOrderDetailsPage = '/OrderDetailsPage';
  static const kAddOrderPage = '/AddOrderPage';
  static const kSignOrLogPage = '/SignOrLogPage';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
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
        path: kSignOrLogPage,
        builder: (context, state) => SignOrLog(),
      ),
    ],
  );
}
