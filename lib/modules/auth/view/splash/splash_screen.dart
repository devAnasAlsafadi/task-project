import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_project/config/routes.dart';
import 'package:task_project/core/asset_manager.dart';
import 'package:task_project/modules/auth/services/auth_service.dart';
import 'package:task_project/modules/auth/view/splash/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashController _controller = SplashController();

  @override
  void initState() {
    super.initState();
    _controller.handelUserState();
  }

  @override
  void dispose() {
    _controller.streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AssetImagesManager.logo),
      ),
    );
  }
}
