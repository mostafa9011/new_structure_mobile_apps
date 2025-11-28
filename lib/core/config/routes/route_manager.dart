import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../../features/splash/presentation/screens/splash_screen.dart';
import 'page_name.dart';

class RouteManager {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static BuildContext currentContext = navigatorKey.currentState!.context;

  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case PageName.splash:
        return _getPageTransition(
          const SplashScreen(),
          settings: routeSettings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }

  // ignore: unused_element
  static PageTransition<dynamic> _getPageTransition(
    Widget screen, {
    RouteSettings? settings,
  }) {
    return PageTransition(
      child: screen,
      type: PageTransitionType.fade,
      curve: Curves.easeOut,
      reverseDuration: const Duration(milliseconds: 500),
      duration: const Duration(milliseconds: 500),
      settings: settings,
    );
  }
}
