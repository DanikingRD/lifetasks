import 'package:flutter/material.dart';
import 'package:lifetasks/core/error.dart';
import 'package:lifetasks/welcome.dart';

const String kWelcomePage = '/welcome';
const String kLoginPage = '/login';

Route<Widget> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case "/":
    case kWelcomePage:
      return MaterialPageRoute(
        builder: (context) => const WelcomePage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => UnknownRoutePage(routeName: settings.name!),
      );
  }
}
