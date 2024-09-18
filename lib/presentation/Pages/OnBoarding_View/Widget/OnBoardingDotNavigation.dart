import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../Utils/Helper/Helper.dart';
import '../Controller/Onboarding_Controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = HelperFunction.isDarkMode(context);
    final height = HelperFunction.screenHeight(context);
    final width = HelperFunction.screenWidth(context);
    return Positioned(
      bottom: height * 0.14,
      left: width * 0.42,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          dotHeight: 10.0,
          expansionFactor: 3,
          dotWidth: 10.0,
          activeDotColor:
              dark ? const Color(0xff020817) : const Color(0xffFFFFFF),
        ),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}
