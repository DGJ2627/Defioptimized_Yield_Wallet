import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Utils/Helper/Helper.dart';
import '../../../../Utils/constants/ImagePath/ImagePath.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Align(
              alignment: Alignment.topCenter,
              child: dark
                  ? SvgPicture.asset(ImagePath.imagePath.horizontalLightLogo)
                  : SvgPicture.asset(ImagePath.imagePath.horizontalDarkLogo)),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Sign In",
            style: dark
                ? Theme.of(context).textTheme.displayLarge
                : Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "WelCome Back 👋",
            style: dark
                ? Theme.of(context).textTheme.displaySmall
                : Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
