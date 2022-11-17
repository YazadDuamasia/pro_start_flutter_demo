import 'package:flutter/material.dart';
import '../../pages/pages.dart';

import '../routs.dart';

class RouteGenerator {
  /*
  *
  *  If want to pop all previous routes and move specific screen.
  *  Navigator.of(context).pushNamedAndRemoveUntil(RouteName.homeScreenRoute, (Route<dynamic> route) => false,);
  *
  */

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case RouteName.splashRoute:
        return MaterialPageRoute<dynamic>(builder: (_) => const SplashScreen());

      case RouteName.homeScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );




      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<dynamic>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
