import 'package:flutter/material.dart';
import 'package:remotely_io/constants/routes.dart';
import 'package:remotely_io/views/auth/login.screen.dart';
import 'package:remotely_io/views/auth/signup.screen.dart';
import 'package:remotely_io/views/landing/landing.screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.landingRoute:
      return MaterialPageRoute(builder: (context) => LandingScreen());
    case AppRoutes.loginRoute:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case AppRoutes.signupRoute:
      return MaterialPageRoute(builder: (context) => SignUpScreen());
    default:
      return MaterialPageRoute(builder: (context) => LandingScreen());
  }
}
