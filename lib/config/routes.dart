import 'package:flutter/material.dart';
import 'package:task_project/modules/auth/view/login_screen.dart';


class Routes {
  //auth
  static const String loginScreen = '/login_screen';
  static const String imagesScreen = '/images_screen';
  static const String uploadImage = '/upload_image';



  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case uploadImage:
        return MaterialPageRoute(
          builder: (context) {
            return const BoardingScreen();
          },
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        );
      case imagesScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        );
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('route not found'),
                  ),
                ));
    }
  }
}
