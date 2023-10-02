import 'package:flutter/material.dart';
import 'package:task_project/config/routes.dart';
import 'package:task_project/config/theme.dart';
import 'package:task_project/manager/navigation_manager.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoute,
      navigatorKey: NavigationManger.navigationKey,
      initialRoute:Routes.splashScreen,
      theme: appTheme(),
    );
  }
}
