import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task_project/core/shared_preference_controller.dart';
import 'package:task_project/firebase_options.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPrefController().initShared();

}

