import 'package:flutter/material.dart';
import 'package:remotely_io/config/router.dart' as router;
import 'package:remotely_io/config/theme.dart' as theme ;
import 'package:remotely_io/constants/app_text.dart';
import 'package:remotely_io/constants/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: theme.primaryTheme,
      onGenerateRoute: router.generateRoute,
      initialRoute: AppRoutes.landingRoute,
    );
  }
}
