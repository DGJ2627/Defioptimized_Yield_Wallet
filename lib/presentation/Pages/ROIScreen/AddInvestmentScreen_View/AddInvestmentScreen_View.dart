import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/presentation/Pages/BottomNavigationScreen/BottomNavigationScreen_VIew.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../../../Utils/Theme/GradientColor.dart';
import '../BuyPackageScreen/BuyPackageScreen_View.dart';
import 'Widget/AddInvestmentPackage_Widget.dart';

class AddInvestmentScreenView extends StatelessWidget {
  const AddInvestmentScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.offAll(const BottomNavigationScreen());
                    },
                    icon: Icon(
                      Icons.keyboard_backspace_rounded,
                      color: dark ? Colors.black : Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Add Investment",
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
                onTap: () {
                  Get.to(const BuyPackageScreenView());
                },
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
              AddInvestmentPackageWidget(
                onTap: () {
                  Get.to(const BuyPackageScreenView());
                },
                packageNumber: "01",
                totalPrice: "100",
                totalInvestment: "10,00,000.00",
                totalInvestor: "1,25,000",
                totalReturnOnYearly: "20.25",
                gradientDark:
                    GradientColor.gradientColor.gradientPackage2DarkColor,
                gradientLight:
                    GradientColor.gradientColor.gradientPackage2LightColor,
              ),
              const Gap(20),
              AddInvestmentPackageWidget(
                onTap: () {
                  Get.to(const BuyPackageScreenView());
                },
                packageNumber: "01",
                totalPrice: "100",
                totalInvestment: "10,00,000.00",
                totalInvestor: "1,25,000",
                totalReturnOnYearly: "20.25",
                gradientDark:
                    GradientColor.gradientColor.gradientPackage3DarkColor,
                gradientLight:
                    GradientColor.gradientColor.gradientPackage3LightColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
