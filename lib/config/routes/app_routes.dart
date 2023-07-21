import 'package:flutter/material.dart';
import '../../View/home/home_screen.dart';
import '../../View/more/more_screen.dart';
import '../../View/tabs/tabs_screen.dart';
// import '../../features/splash/presentation/screens/splash_screen.dart';

class Routes {
  Routes._();

  static const String initialRoute = '/';
  static const String more = '/more';
  static const String home = '/home';
}

class AppRoute {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const TabsScreen(),
        );

      case Routes.more:
        return MaterialPageRoute(
          builder: (context) => const MoreScreen(),
        );

      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(
            'undefined Page :{',
          ),
        ),
      ),
    );
  }
}
