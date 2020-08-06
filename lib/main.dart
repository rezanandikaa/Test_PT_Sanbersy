import 'package:flutter/material.dart';
import 'package:test_sanbersy/page/loadingpage.dart';
import 'package:test_sanbersy/page/loginpage.dart';
import 'package:test_sanbersy/page/onboardingpage.dart';

var routes = <String, WidgetBuilder>{
  // ignore: non_constant_identifier_names
  '/loading': (BuildContext) => LoadingPage(),
  // ignore: non_constant_identifier_names
  '/Login': (BuildContext) => LoginPage(),
  // ignore: non_constant_identifier_names
  '/OnBoarding': (BuildContext) => OnBoardingPage(),
};
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
      routes: routes,
    );
  }
}
