import 'package:flutter/material.dart';
import 'package:task_project/modules/auth/services/auth_service.dart';
import 'package:task_project/modules/auth/view/login/login_screen_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final LoginScreenController _controller = LoginScreenController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In With Google!'),),
      body: Center(
        child: ElevatedButton(
          onPressed: () async{
            await _controller.signInWithGoogle(context: context);
          },
          child: const Text('Login With Google'),
        ),
      ),
    );
  }
}
