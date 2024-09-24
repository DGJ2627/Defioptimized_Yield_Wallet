import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controller/Onboarding_Controller.dart';

class OnBoardingSkipWidget extends StatelessWidget {
  const OnBoardingSkipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Positioned(
      top: 50,
      right: 20,
      child: TextButton(
        onPressed: () => controller.skipPage(),
        child: Text(
          "Skip",
          style: GoogleFonts.plusJakartaSans(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationThickness: 2,
              color: const Color(0xffFFFFFF)),
        ),
      ),
    );
  }
}
