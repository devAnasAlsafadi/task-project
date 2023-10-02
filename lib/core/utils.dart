import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:task_project/core/app_color.dart';
import 'package:task_project/core/enum.dart';


class Utils  {

  // show dialog.
  static Future showADialog({
    required Widget child,
    required BuildContext context
  }) async {
    return await showDialog(
      context: context,
      builder: (_) => child,
    );
  }

  static void showMessage({
    required BuildContext context,
    required String text,
    required MessageType messageType,
    bool persistent = true,
  }) =>context.showFlash<bool>(
    barrierDismissible: true,
    duration: const Duration(seconds: 3),
    builder: (context, controller) => FlashBar(
      controller: controller,
      forwardAnimationCurve: Curves.easeInCirc,
      reverseAnimationCurve: Curves.bounceIn,
      position: FlashPosition.top,
      backgroundColor: Colors.transparent,
      builder: (context, child) {
        return Container(
          width:double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:messageType == MessageType.failureMessage ? AppColor.redColor :AppColor.greenColor
          ),
          padding: const EdgeInsets.all(20),
          child:  Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(text,style: const TextStyle(
                        color: Colors.white
                    ),),
                  ),
                  Icon(messageType == MessageType.failureMessage ? Icons.warning : Icons.check,color: AppColor.whiteColor,)
                ],
              )
            ],
          ),
        );
      },
      margin: const EdgeInsets.symmetric(vertical: 50,horizontal: 10),
      content: const Text(''),
    ),
  );




  // // show loading dialog.
  // static void showLoading({
  //   String? title,
  //   required BuildContext context
  // }) {
  //   showDialog(
  //     context: context,
  //     builder: (_) => LoadingWidget(
  //       title: title,
  //     ),
  //     barrierDismissible: false,
  //   );
  // }


  // to int.
  static int toInt(dynamic value) {
    if (value is int) {
      return value;
    } else if (value is String) {
      return int.tryParse(value) ?? 0;
    } else {
      return 0;
    }
  }

  // to double.
  static double toDouble(dynamic value) {
    if (value is double) {
      return value;
    } else if (value is String) {
      return double.tryParse(value) ?? 0;
    } else {
      return 0;
    }
  }



}