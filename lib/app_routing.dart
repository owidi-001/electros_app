import 'package:electros/utils/constants.dart';
import 'package:flutter/material.dart';

import '/screens/welcome_screen.dart';
import '/screens/home_screen.dart';
import 'screens/error_screen.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.welcome:
      {
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());
      }
    case AppRoutes.home:
      {
        return MaterialPageRoute(
            builder: (context) => const HomePage(title: "title"));
      }

    default:
      {
        return MaterialPageRoute(builder: ((context) => const ErrorScreen()));
      }
  }
}
