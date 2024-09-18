import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Utils/Helper/Helper.dart';
import '../../../../Utils/Theme/GradientText.dart';
import 'ROIPackageContainer_Widget.dart';

class PackageSliderWidget extends StatelessWidget {
  const PackageSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    final dark = HelperFunction.isDarkMode(context);
    return Container(
      height: Height * 0.34,
      width: Width * 1,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topCenter,
            colors: [
              Color(0xff379FFE),
              Color(0xff555DFD),
            ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "# 01 Package",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ROIPackageContainerWidget(
                tital: "Invested",
                subTitel: "\$3500.00",
              ),
              ROIPackageContainerWidget(
                tital: "Current",
                subTitel: "\$3526.00",
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ROIPackageContainerWidget(
                tital: "Total Return on \ninvestment",
                subTitel: "+ \$26.00(1.20%)",
              ),
              ROIPackageContainerWidget(
                tital: "Expiry \n Validity",
                subTitel: "3days",
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  titlePadding:
                      const EdgeInsetsDirectional.symmetric(vertical: 30),
                  backgroundColor:
                      dark ? Colors.white : const Color(0xff1E1F23),
                  title: "Are You Sure ! ",
                  titleStyle: GoogleFonts.plusJakartaSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: dark ? Colors.black : Colors.white),
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You want to Cancel This \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t Package ?",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: dark
                                ? const Color(0xff838284)
                                : const Color(0xff777B95)),
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 48,
                              width: 140,
                              decoration: BoxDecoration(
                                color: dark
                                    ? const Color(0xff838284)
                                    : const Color(0xff131212),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "No",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: dark
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xffFFFFFF)),
                              ),
                            ),
                          ),
                          const Gap(10),
                          CustomButtonWidget(
                            height: 48,
                            width: 140,
                            text: "Yes",
                            onTap: () {
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: GradientText(
                  'Cancel Package',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 18, fontWeight: FontWeight.w600),
                  gradient: LinearGradient(colors: [
                    Colors.blue.shade400,
                    Colors.blue.shade900,
                  ]),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
