import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:task_project/config/routes.dart';
import 'package:task_project/core/developer.dart';
import 'package:task_project/manager/navigation_manager.dart';
import 'package:task_project/modules/auth/services/auth_service.dart';

class SplashController {
  late StreamSubscription streamSubscription;

  void handelUserState () {
    Future.delayed(const Duration(seconds: 3),() {
      streamSubscription =  AuthService().checkUserState(listener: ({required bool status}) {
        String route = status? Routes.imagesScreen :  Routes.loginScreen;
        NavigationManger.offAllNamed(route);
      },);
    },);
  }



}