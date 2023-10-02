import 'package:flutter/cupertino.dart';

import 'package:task_project/modules/auth/services/auth_service.dart';

class LoginScreenController {
  final AuthService _service = AuthService();
  Future<void> signInWithGoogle({required BuildContext context}) async {
    await _service.signInWithGoogle();
  }
}
