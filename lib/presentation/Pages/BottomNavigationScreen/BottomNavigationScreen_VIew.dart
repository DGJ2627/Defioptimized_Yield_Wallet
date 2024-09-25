import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/presentation/Pages/ROIScreen/AddInvestmentScreen_View/AddInvestmentScreen_View.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Controller/BottomNavigation_Controller.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavigationController());
    final dark = HelperFunction.isDarkMode(context);
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    return Scaffold(
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => AnimatedBottomNavigationBar.builder(
          itemCount: controller.icons.length,
          tabBuilder: (index, isActive) {
            final isSelectedColor = isActive;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isSelectedColor
                      ? controller.selectedIcons[index]
                      : controller.icons[index],
                  color: dark
                      ? isSelectedColor
                          ? const Color(0xff20002C).withOpacity(0.8)
                          : const Color(0xff838284)
                      : isSelectedColor
                          ? Colors.white
                          : const Color(0xff777B95),
                  size: 24,
                ),
                const Gap(8),
                AutoSizeText(
                  controller.iconNames[index],
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: Height * 0.011,
                    fontWeight: FontWeight.w500,
                    color: dark
                        ? isSelectedColor
                            ? const Color(0xff131212)
                            : const Color(0xff838284)
                        : isSelectedColor
                            ? Colors.white
                            : const Color(0xff777B95),
                  ),
                ),
              ],
            );
          },
          activeIndex: controller.selectedIndex.value,
          gapLocation: GapLocation.center,
          onTap: (index) {
            controller.selectedIndex.value = index;
          },
          height: Height * 0.090,
          rightCornerRadius: 20,
          leftCornerRadius: 20,
          backgroundColor:
              dark ? const Color(0xffF2F2F2) : const Color(0xff222F44),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //floatingActionButton btn
      floatingActionButton: Theme(
        data: ThemeData(useMaterial3: false),
        child: SizedBox(
          height: Height * 0.165,
          width: Width * 0.165,
          child: FloatingActionButton(
            onPressed: () => Get.to(const AddInvestmentScreenView()),
            child: Container(
                height: Height * 0.166,
                width: Width * 0.165,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.center,
                    colors: dark
                        ? [
                            const Color(0xffCBB4D4),
                            const Color(0xff20002C),
                          ]
                        : [
                            const Color(0xff3B82F6),
                            const Color(0xff3B82F6),
                          ],
                  ),
                ),
                child: const Icon(Icons.add, size: 30, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
