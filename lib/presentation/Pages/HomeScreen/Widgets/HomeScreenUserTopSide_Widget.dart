import 'package:defioptimized_yield/presentation/Pages/NotificationScreen_View/NotificationScreen_View.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../Utils/Helper/Helper.dart';
import '../../../../Utils/constants/ImagePath/ImagePath.dart';

class HomeScreenUserTopSideWidget extends StatelessWidget {
  const HomeScreenUserTopSideWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    List<Color> lightGradientColor = [
      const Color(0xffCBB4D4).withOpacity(0.6),
      const Color(0xff20002C),
    ];
    List<Color> darkGradientColor = [
      const Color(0xff379FFE),
      const Color(0xff555DFD),
    ];
    return Container(
      height: Height * 0.38,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        gradient: LinearGradient(
          begin: dark ? const Alignment(-4, -6) : const Alignment(-2, 0),
          end: dark ? const Alignment(0.8, 1) : const Alignment(0.8, 1),
          colors: dark ? lightGradientColor : darkGradientColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        ImagePath.imagePath.userProfileImage,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Hello, Robert Fox!",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(
                  width: 60,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white.withOpacity(0.7)),
                      color: Colors.white.withOpacity(0.4)),
                  child: IconButton(
                      onPressed: () =>
                          Get.to(() => const NotificationScreenView()),
                      icon: const Icon(
                        Iconsax.notification_bing,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const Gap(50),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
              child: Text(
                "Available Balance",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
              child: Text(
                "\$2,125.25",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
