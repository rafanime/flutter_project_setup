import 'package:flutter/material.dart';
import 'package:projectname/ui/onboarding/landing_page.dart';
import 'package:projectname/ui/onboarding/signin.dart';
import 'package:projectname/ui/onboarding/signup.dart';
import 'package:projectname/ui/onboarding/splash.dart';

class AppRouting {
  static Route<Widget> generateRoute(RouteSettings settings) {
    final name = settings.name;

    MaterialPageRoute<Widget> route(Widget widget) {
      return MaterialPageRoute(
        builder: (context) => widget,
        settings: settings,
      );
    }

    if (name == "/") {
      return route(Splash());
    }

    if (name == Splash.routeName) {
      return route(Splash());
    }

    if (name == LandingPage.routeName) {
      return route(LandingPage());
    }
    if (name == SignUp.routeName) {
      return route(SignUp());
    }
    if (name == SignIn.routeName) {
      return route(SignIn());
    }
  }
}
