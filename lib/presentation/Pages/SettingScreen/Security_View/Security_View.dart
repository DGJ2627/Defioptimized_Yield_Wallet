import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/Widget/CustomSwitch_Widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../Controller/Switch_Controller.dart';
import '../Widget/SettingOptionsCustom_Widget.dart';

class SecurityView extends StatelessWidget {
  const SecurityView({super.key});

  @override
  Widget build(BuildContext context) {
    final switchController = Get.put(CustomSwitchController());
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(
                      Icons.keyboard_backspace_rounded,
                      color: dark ? Colors.black : Colors.white,
                    ),
                  ),
                  Text(
                    "Security",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Container(
                    width: 50,
                  ),
                ],
              ),
              const Gap(30),
              SettingOptionsCustomWidget(
                optionName: '2FA Authentication',
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: CustomSwitch(
                    onTap: () => switchController.toggleSwitch2FAAuthentication,
                    switchValue:
                        switchController.isSwitched2FAAuthentication.value,
                  ),
                ),
                lightImagePath:
                    ImagePath.imagePath.changePasswordLightIconSvgImage,
                darkImagePath: ImagePath.imagePath.changePasswordIconSvgImage,
                customTrailingExpanded: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
