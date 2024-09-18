import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/constants/Texts/ConstantText.dart';
import 'package:defioptimized_yield/presentation/Pages/OnBoarding_View/Widget/OnBoardingNextButton.dart';
import 'package:defioptimized_yield/presentation/Pages/OnBoarding_View/Widget/OnBoardingSkip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/constants/ImagePath/ImagePath.dart';
import 'Controller/Onboarding_Controller.dart';
import 'Widget/OnBoardingContextWidget.dart';
import 'Widget/OnBoardingDotNavigation.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    final dark = HelperFunction.isDarkMode(context);
    final List<Color> gradientLightColor = [
      const Color(0xff20002C),
      const Color(0xff492C54),
    ];

    final List<Color> gradientDarkColor = [
      const Color(0xff555DFD),
      const Color(0xff2A3B4B),
    ];
    return Scaffold(
      body: Stack(
        children: [
          dark
              ? PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.updatePageIndicator,
                  children: [
                    OnBoardingContextWidget(
                      imagePath: ImagePath.imagePath.splashImage1,
                      title: ConstantText.constantText.onBoardingTitle1,
                      subTitle: ConstantText.constantText.onBoardingSubTitle1,
                      gradientColor: gradientLightColor,
                    ),
                    OnBoardingContextWidget(
                      imagePath: ImagePath.imagePath.splashImage2,
                      title: ConstantText.constantText.onBoardingTitle2,
                      subTitle: ConstantText.constantText.onBoardingSubTitle2,
                      gradientColor: gradientLightColor,
                    ),
                    OnBoardingContextWidget(
                      imagePath: ImagePath.imagePath.splashImage3,
                      title: ConstantText.constantText.onBoardingTitle3,
                      subTitle: ConstantText.constantText.onBoardingSubTitle3,
                      gradientColor: gradientLightColor,
                    ),
                  ],
                )
              : PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.updatePageIndicator,
                  children: [
                    OnBoardingContextWidget(
                      imagePath: ImagePath.imagePath.splashImage1,
                      title: ConstantText.constantText.onBoardingTitle1,
                      subTitle: ConstantText.constantText.onBoardingSubTitle1,
                      gradientColor: gradientDarkColor,
                    ),
                    OnBoardingContextWidget(
                      imagePath: ImagePath.imagePath.splashImage2,
                      title: ConstantText.constantText.onBoardingTitle2,
                      subTitle: ConstantText.constantText.onBoardingSubTitle2,
                      gradientColor: gradientDarkColor,
                    ),
                    OnBoardingContextWidget(
                      imagePath: ImagePath.imagePath.splashImage3,
                      title: ConstantText.constantText.onBoardingTitle3,
                      subTitle: ConstantText.constantText.onBoardingSubTitle3,
                      gradientColor: gradientDarkColor,
                    ),
                  ],
                ),
          const OnBoardingSkipWidget(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

// body: ClipPath(
// clipper: CliperCilper(),
// child: Container(
// height: height * 0.481,
// width: double.infinity,
// decoration: const BoxDecoration(
// borderRadius: BorderRadius.only(
// bottomLeft: Radius.circular(30),
// bottomRight: Radius.circular(30),
// ),
// gradient: LinearGradient(
// begin: Alignment.center,
// end: Alignment.bottomCenter,
// colors: [
// Color(0xff20002C),
// Color(0xff492C54),
// ],
// ),
// ),
// ),
// ),
// class CliperCilper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//
//     path.quadraticBezierTo(0, size.height, 10, 10);
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     // TODO: implement shouldReclip
//     throw UnimplementedError();
//   }
// }
