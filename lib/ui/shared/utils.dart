import 'package:flutter/material.dart';

import '../../app.dart';

class Utils {
  static bool showingLoading = false;

  // Navigation
  static Future<Object> pushNamedAndRemoveUntil(BuildContext context, String routeName,
      {Object arguments}) {
    return navigatorKey.currentState
        .pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false, arguments: arguments);
  }

  static Future<Object> pushReplacementNamed(BuildContext context, String routeName,
      {Object arguments}) {
    return navigatorKey.currentState.pushReplacementNamed(routeName, arguments: arguments);
  }

  static Future<Object> pushNamed(BuildContext context, String routeName, {Object arguments}) {
    return Navigator.of(context).pushNamed(routeName, arguments: arguments);
  }

  static void pop(BuildContext context, [Object result]) {
    return Navigator.of(context).pop(result);
  }

  // Gradients
  static LinearGradient linearGradient({
    Color topColor = Colors.transparent,
    Color bottomColor = const Color.fromRGBO(0, 0, 0, 0.65),
    List<double> stops = const [0, 1],
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      stops: stops,
      colors: [
        topColor,
        bottomColor,
      ],
    );
  }

  static showLoadingDialog() {
    if (!showingLoading) {
      showingLoading = true;
      showDialog(
        context: navigatorKey.currentContext,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Center(child: CircularProgressIndicator());
        },
      );
    }
  }

  static void dismissLoadingDialog() {
    if (showingLoading) {
      showingLoading = false;
      Utils.pop(navigatorKey.currentContext);
    }
  }
}
