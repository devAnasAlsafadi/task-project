import 'package:flutter/material.dart';

import 'package:task_project/core/app_color.dart';
import 'package:task_project/core/app_string.dart';
import 'package:task_project/core/hex_color.dart';

ThemeData appTheme() => ThemeData(
    useMaterial3: true,
    fontFamily:AppString.fontFamily ,
    primaryColor: AppColor.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primary
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColor.primary,
    ),
    brightness: Brightness.light,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 22
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor:  AppColor.primary,
        minimumSize: const Size(double.infinity, 58),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    ),
);

