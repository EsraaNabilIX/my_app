import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/presentation/resources/assets_manager.dart';
import 'package:my_app/presentation/resources/color_manger.dart';
import 'package:my_app/presentation/resources/constant_manager.dart';
import 'package:my_app/presentation/resources/routes_manger.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstant.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      body: Center(
        child: Image.asset(ImagesAssets.splashLogo),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
