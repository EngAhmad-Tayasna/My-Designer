import 'package:ahmad_tayasna/utils/app_colors.dart';
import 'package:ahmad_tayasna/view/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: Center(
        child: Image.asset(
          'assets/png/logo.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  void navigateToHome() async {
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    Get.off(
      () => const Login(),
    );
  }
}
