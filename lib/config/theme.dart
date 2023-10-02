import 'package:flutter/material.dart';

import 'package:task_project/core/app_color.dart';
import 'package:task_project/core/app_string.dart';

ThemeData appTheme() => ThemeData(
    fontFamily:AppString.fontFamily ,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 22
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 58),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    ),
);

