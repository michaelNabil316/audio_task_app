import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cet_e_services/config/routes/app_routes.dart';
import 'package:cet_e_services/core/utils/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  void _getStated() {
    Navigator.pushReplacementNamed(context, Routes.home);
  }

  void _startDelay() {
    _timer = Timer(const Duration(milliseconds: 3000), () {
      _getStated();
    });
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: ScreenUtil().screenHeight,
        child: Image.asset(
          AppImages.splash,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
