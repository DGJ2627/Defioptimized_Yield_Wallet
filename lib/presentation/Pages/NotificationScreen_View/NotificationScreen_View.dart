import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/constants/ImagePath/ImagePath.dart';

class NotificationScreenView extends StatelessWidget {
  const NotificationScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.keyboard_backspace_rounded,
                          color: dark ? Colors.black : Colors.white,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Notification",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Container(
                        width: 50,
                      ),
                    ],
                  ),
                  const Gap(30),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Today",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                  const Gap(30),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 86,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: dark
                            ? const Color(0xffF8F8F8)
                            : Colors.white.withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
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
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "You received a deposit  ",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: dark
                                            ? const Color(0xff131212)
                                            : Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "\$659.00\n",
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff00BF71)),
                                    ),
                                    TextSpan(
                                      text: "from ",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: dark
                                            ? const Color(0xff131212)
                                            : Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Wallet",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: dark
                                            ? const Color(0xff131212)
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "02:52 PM",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 86,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: dark
                            ? const Color(0xffF8F8F8)
                            : Colors.white.withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dark
                                    ? const Color(0xff00BF71).withOpacity(0.3)
                                    : Colors.white.withOpacity(0.1),
                              ),
                              child: SvgPicture.asset(
                                ImagePath.imagePath.changePasswordIconSvgImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Password Successfully Change",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff131212)
                                      : Colors.white,
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "15h ago",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Yesterday",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 86,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: dark
                            ? const Color(0xffF8F8F8)
                            : Colors.white.withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dark
                                    ? const Color(0xffE4DFDF).withOpacity(0.2)
                                    : Colors.white.withOpacity(0.1),
                              ),
                              child: dark
                                  ? SvgPicture.asset(ImagePath
                                      .imagePath.withdrawLightIconSvgImage)
                                  : SvgPicture.asset(ImagePath
                                      .imagePath.withdrawDarkIconSvgImage),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your withdraw Amount to place your \nbank account",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "15 Jun 2022",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 86,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: dark
                            ? const Color(0xffF8F8F8)
                            : Colors.white.withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dark
                                    ? const Color(0xff00BF71).withOpacity(0.3)
                                    : Colors.white.withOpacity(0.1),
                              ),
                              child: SvgPicture.asset(
                                ImagePath.imagePath.changePasswordIconSvgImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Password Successfully Change",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff131212)
                                      : Colors.white,
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "15h ago",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 86,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: dark
                            ? const Color(0xffF8F8F8)
                            : Colors.white.withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
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
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "You received a deposit  ",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: dark
                                            ? const Color(0xff131212)
                                            : Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "\$659.00\n",
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff00BF71)),
                                    ),
                                    TextSpan(
                                      text: "from ",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: dark
                                            ? const Color(0xff131212)
                                            : Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Wallet",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: dark
                                            ? const Color(0xff131212)
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "02:52 PM",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 86,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: dark
                            ? const Color(0xffF8F8F8)
                            : Colors.white.withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dark
                                    ? const Color(0xff00BF71).withOpacity(0.3)
                                    : Colors.white.withOpacity(0.1),
                              ),
                              child: SvgPicture.asset(
                                ImagePath.imagePath.changePasswordIconSvgImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Password Successfully Change",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff131212)
                                      : Colors.white,
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "15h ago",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 86,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: dark
                            ? const Color(0xffF8F8F8)
                            : Colors.white.withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dark
                                    ? const Color(0xffE4DFDF).withOpacity(0.2)
                                    : Colors.white.withOpacity(0.1),
                              ),
                              child: dark
                                  ? SvgPicture.asset(ImagePath
                                      .imagePath.withdrawLightIconSvgImage)
                                  : SvgPicture.asset(ImagePath
                                      .imagePath.withdrawDarkIconSvgImage),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your withdraw Amount to place your \nbank account",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "15 Jun 2022",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 86,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: dark
                            ? const Color(0xffF8F8F8)
                            : Colors.white.withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dark
                                    ? const Color(0xff00BF71).withOpacity(0.3)
                                    : Colors.white.withOpacity(0.1),
                              ),
                              child: SvgPicture.asset(
                                ImagePath.imagePath.changePasswordIconSvgImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Password Successfully Change",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff131212)
                                      : Colors.white,
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "15h ago",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 86,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: dark
                            ? const Color(0xffF8F8F8)
                            : Colors.white.withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
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
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "You received a deposit  ",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: dark
                                            ? const Color(0xff131212)
                                            : Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "\$659.00\n",
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff00BF71)),
                                    ),
                                    TextSpan(
                                      text: "from ",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: dark
                                            ? const Color(0xff131212)
                                            : Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Wallet",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: dark
                                            ? const Color(0xff131212)
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "02:52 PM",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 86,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: dark
                            ? const Color(0xffF8F8F8)
                            : Colors.white.withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dark
                                    ? const Color(0xff00BF71).withOpacity(0.3)
                                    : Colors.white.withOpacity(0.1),
                              ),
                              child: SvgPicture.asset(
                                ImagePath.imagePath.changePasswordIconSvgImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Password Successfully Change",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff131212)
                                      : Colors.white,
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "15h ago",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
