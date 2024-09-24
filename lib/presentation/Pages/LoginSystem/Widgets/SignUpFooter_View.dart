import 'package:defioptimized_yield/presentation/Pages/LoginSystem/LoginScreen_View.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Utils/Helper/Helper.dart';
import '../../../../Utils/constants/ImagePath/ImagePath.dart';
import 'OtherSignInButton_Widget.dart';

class SignUpFooterScreen extends StatelessWidget {
  const SignUpFooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: Height * 0.020,
              ),
              Container(
                height: Height * 0.003,
                width: Width * 0.3,
                color: dark
                    ? const Color(0xffD9D9D9)
                    : const Color(0x0fffffff).withOpacity(0.2),
              ),
              Text(
                "Or",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: dark
                      ? const Color(0xffD9D9D9)
                      : const Color(0x0fffffff).withOpacity(0.2),
                ),
              ),
              Container(
                height: Height * 0.003,
                width: Width * 0.3,
                color: dark
                    ? const Color(0xffD9D9D9)
                    : const Color(0x0fffffff).withOpacity(0.2),
              ),
              SizedBox(
                width: Height * 0.020,
              ),
            ],
          ),
          SizedBox(
            height: Height * 0.020,
          ),
          OtherSignInButtonWidget(
            iconName: "Google",
            imageIcon: ImagePath.imagePath.googleIcon,
          ),
          const SizedBox(
            height: 20,
          ),
          OtherSignInButtonWidget(
            iconName: "Apple",
            imageIcon: dark
                ? ImagePath.imagePath.appleIcon
                : ImagePath.imagePath.darkAppleIcon,
          ),
          SizedBox(
            height: Height * 0.020,
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Get.to(() => const LoginScreenView());
              },
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: "Already have a account?  ",
                      style: Theme.of(context).textTheme.displaySmall),
                  TextSpan(
                      text: "Sign in",
                      style: Theme.of(context).textTheme.displayMedium)
                ]),
              ),
            ),
          ),
          SizedBox(
            height: Height * 0.030,
          ),
        ],
      ),
    );
  }
}
