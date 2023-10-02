import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In With Google!'),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {

          },
          child: const Text('Login With Google'),
        ),
      ),
    );
  }
}
