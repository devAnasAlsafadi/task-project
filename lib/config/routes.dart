import 'package:flutter/material.dart';
import 'package:task_project/modules/auth/view/login/login_screen.dart';
import 'package:task_project/modules/auth/view/splash/splash_screen.dart';
import 'package:task_project/modules/images/view/images/images_screen.dart';
import 'package:task_project/modules/images/view/upload_image/upload_image_screen.dart';


class Routes {
  //auth
  static const String loginScreen = '/login_screen';
  static const String imagesScreen = '/images_screen';
  static const String uploadImage = '/upload_image';
  static const String splashScreen = '/splash_screen';


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        );
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
        );
      case imagesScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const ImagesScreen();
          },
        );
      case uploadImage:
        return MaterialPageRoute(
          builder: (context) {
            return const UploadImage();
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