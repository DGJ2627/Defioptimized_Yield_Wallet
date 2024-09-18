import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../OnBoarding_View/Controller/Onboarding_Controller.dart';
import '../../../OnBoarding_View/Widget/OnBoardingNextButton.dart';

class GoogleEmailAuthenticator extends StatelessWidget {
  const GoogleEmailAuthenticator({super.key});

  @override
  Widget build(BuildContext context) {
    final height = HelperFunction.screenHeight(context);
    final width = HelperFunction.screenWidth(context);
    final controller = Get.put(OnBoardingController());
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark ? Colors.transparent : Colors.black,
        centerTitle: true,
        title: Text(
          "Enable Google Authenticator",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.keyboard_backspace_rounded,
            color: dark ? Colors.black : Colors.white,
          ),
        ),
      ),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //       height: height * 0.08,
      //       width: width,
      //       decoration: BoxDecoration(
      //         border:
      //             Border.all(color: Colors.white.withOpacity(0.1), width: 1),
      //         color: dark
      //             ? const Color(0xffF8F8F8)
      //             : Colors.white.withOpacity(0.1),
      //       ),
      //     ),
      //   ],
      // ),
      body: Stack(
        children: [
          SmoothPageIndicator(
            effect: ExpandingDotsEffect(
              dotHeight: 3.0,
              expansionFactor: 3,
              dotWidth: 50.0,
              activeDotColor:
                  dark ? const Color(0xff020817) : const Color(0xffFFFFFF),
            ),
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 4,
          ),
        ],
      ),
    );
  }
}
