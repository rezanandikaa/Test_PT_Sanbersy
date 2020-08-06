import 'package:flutter/material.dart';

class MyNavigator {
  static void navbar(BuildContext context) {
    Navigator.pushNamed(context, "/navbar");
  }

  static void login(BuildContext context) {
    Navigator.pushNamed(context, "/Login");
  }

  static void onboarding(BuildContext context) {
    Navigator.pushNamed(context, "/OnBoarding");
  }
}
