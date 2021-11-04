import 'package:flutter/material.dart';
import 'package:remotely_io/constants/routes.dart';
import 'package:remotely_io/views/landing/landing.screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.landingRoute:
      return MaterialPageRoute(builder: (context) => LandingScreen());
    default:
      return MaterialPageRoute(builder: (context) => LandingScreen());
  }
}
