import 'package:flutter/material.dart';
class NavigationManger {


  //||... navigation key ...||
  static GlobalKey<NavigatorState> navigationKey =  GlobalKey();


  //||... same of push named ...||
  static  Future<dynamic> toNamed(String routeName,{Object? arguments}) {
    return navigationKey.currentState!.pushNamed(routeName,arguments: arguments);
  }


  //||... same of push and remove until named ...||
  static Future<dynamic> offAllNamed(String routeName,
      {Object? arguments}) async {
    return navigationKey.currentState!.pushNamedAndRemoveUntil(
        routeName, (route) => false,
        arguments: arguments);
  }


  //||... same of popUntil ...||
  static void backUntil(RoutePredicate predicate) {
      navigationKey.currentState!.popUntil(predicate);
  }

  //||... same of pop  ...||
  static pop<T extends Object>([T? result]) {
   navigationKey.currentState!.pop();
  }


  //||... pop to the first route in the stack ...||
  static void backAll<T extends Object>([T? result]) {
    while (navigationKey.currentState!.canPop()) {
      navigationKey.currentState!.pop(result);
    }
  }




}




