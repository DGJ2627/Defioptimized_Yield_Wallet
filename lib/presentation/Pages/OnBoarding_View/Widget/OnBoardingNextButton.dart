import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/Helper/Helper.dart';
import '../Controller/Onboarding_Controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    final dark = HelperFunction.isDarkMode(context);
    final height = HelperFunction.screenHeight(context);
    final width = HelperFunction.screenWidth(context);
    return Positioned(
      right: width * 0.20,
      bottom: height * 0.05,
      child: GestureDetector(
        onTap: () => controller.nextPage(),
        child: Container(
          alignment: Alignment.center,
          height: height * 0.06,
          width: width * 0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: const Alignment(0, -2),
              end: const Alignment(0, 0.4),
              colors: dark
                  ? [
                      const Color(0xff20002C),
                      const Color(0xff492C54),
                    ]
                  : [const Color(0xff3B82F6), const Color(0xff3B82F6)],
            ),
          ),
          child: Text(
            "Next",
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ),
    );
  }
}
