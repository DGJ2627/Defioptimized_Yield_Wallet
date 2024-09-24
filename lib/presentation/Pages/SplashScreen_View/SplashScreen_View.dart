import 'dart:async';
import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Pages/OnBoarding_View/OnBoardingScreen_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    Timer(const Duration(seconds: 2), () {
      Get.offAll(
        () => const OnBoardingScreen(),
      );
    });
    return Scaffold(
      body: dark
          ? Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage(ImagePath.imagePath.lightThemeBackGround)),
              ),
              child: SvgPicture.asset(ImagePath.imagePath.verticalLightLogo),
            )
          : Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.black),
              child: SvgPicture.asset(ImagePath.imagePath.verticalDarkLogo),
            ),
    );
  }
}
