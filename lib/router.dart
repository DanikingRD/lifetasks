import 'package:flutter/material.dart';
import 'package:lifetasks/core/error.dart';
import 'package:lifetasks/core/log.dart';
import 'package:lifetasks/features/signup/signup_page.dart';
import 'package:lifetasks/features/welcome_page.dart';

const String kWelcomePage = '/welcome';
const String kLoginPage = '/login';
const String kSignupPage = '/signup';

Route<Widget> generateRoutes(RouteSettings settings) {
  debug("Navigating to ${settings.name}");
  switch (settings.name) {
    case "/":
    case kWelcomePage:
      return MaterialPageRoute(
        builder: (context) => const WelcomePage(),
      );
    case kSignupPage:
      return MaterialPageRoute(
        builder: (context) => const SignUpPage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => UnknownRoutePage(routeName: settings.name!),
      );
  }
}
