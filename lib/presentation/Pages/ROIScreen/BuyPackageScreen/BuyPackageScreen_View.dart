import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Pages/ROIScreen/ROIAddPasswordScreen_View/ROIAddPasswordScreen_View.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Utils/Helper/Helper.dart';
import '../../../../Utils/Theme/GradientColor.dart';
import '../AddInvestmentScreen_View/Widget/AddInvestmentPackage_Widget.dart';

class BuyPackageScreenView extends StatelessWidget {
  const BuyPackageScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SafeArea(
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
                      "Buy Package",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                  Container(
                    width: 50,
                  ),
                ],
              ),
              const Gap(20),
              AddInvestmentPackageWidget(
                onTap: () {},
                packageNumber: "01",
                totalPrice: "100",
                totalInvestment: "10,00,000.00",
                totalInvestor: "1,25,000",
                totalReturnOnYearly: "20.25",
                gradientDark:
                    GradientColor.gradientColor.gradientPackage1DarkColor,
                gradientLight:
                    GradientColor.gradientColor.gradientPackage1LightColor,
              ),
              const Gap(20),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 118,
                  width: 335,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Amount",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: dark ? Colors.black : Colors.white,
                        ),
                      ),
                      const Gap(8),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xffEDF4E1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "\$ 500.00",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff507E02)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(20),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 88,
                  width: 335,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wallet Balance",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: dark ? Colors.black : Colors.white,
                        ),
                      ),
                      const Gap(8),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: dark
                                ? const Color(0xffF8F8F8)
                                : Colors.white.withOpacity(
                                    0.1,
                                  ),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.4)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: Height * 0.1,
                                width: Width * 0.1,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: dark
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.1),
                                ),
                                child: SvgPicture.asset(
                                  ImagePath.imagePath.walletIconSvgImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "\$ 500.00 USDT",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: dark ? Colors.black : Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Balance remains after investment :",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: dark
                              ? const Color(0xff838284)
                              : const Color(0xff777B95),
                        ),
                      ),
                      TextSpan(
                        text: " 3059.00USDT",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: dark ? Colors.black : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(180),
              Align(
                alignment: Alignment.center,
                child: CustomButtonWidget(
                  height: 56,
                  width: 335,
                  text: "Invest",
                  onTap: () {
                    Get.to(const ROIAddPasswordScreenView());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
