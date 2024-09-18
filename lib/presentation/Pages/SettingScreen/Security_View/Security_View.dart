import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/Security_View/GoogleEmailAuthenticator/GoogleEmailAuthenticator.dart';
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
                  child: SizedBox(
                    width: 50,
                    child: CustomSwitch(
                      switchBackGroundColor: dark
                          ? const Color(0xff131212).withOpacity(0.14)
                          : const Color(0xff838284).withOpacity(0.34),
                      switchDotLightColor: const [
                        Color(0xff379FFE),
                        Color(0xff555DFD),
                      ],
                      switchDotDarkColor:
                          switchController.isSwitched2FAAuthentication.value
                              ? [
                                  Color(0xff379FFE),
                                  Color(0xff555DFD),
                                ]
                              : [
                                  Color(0xff838284),
                                  Color(0xff838284),
                                ],
                      onTap: () =>
                          switchController.toggleSwitch2FAAuthentication(),
                      switchValue:
                          switchController.isSwitched2FAAuthentication.value,
                    ),
                  ),
                ),
                lightImagePath:
                    ImagePath.imagePath.changePasswordLightIconSvgImage,
                darkImagePath: ImagePath.imagePath.changePasswordIconSvgImage,
              ),
              const Gap(10),
              SettingOptionsCustomWidget(
                optionName: 'Email Authenticator',
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SizedBox(
                    width: 50,
                    child: CustomSwitch(
                      switchBackGroundColor: dark
                          ? const Color(0xff131212).withOpacity(0.14)
                          : const Color(0xff838284).withOpacity(0.34),
                      switchDotLightColor: const [
                        Color(0xff379FFE),
                        Color(0xff555DFD),
                      ],
                      switchDotDarkColor:
                          switchController.isSwitchedEmailAuthenticator.value
                              ? [
                                  Color(0xff379FFE),
                                  Color(0xff555DFD),
                                ]
                              : [
                                  Color(0xff838284),
                                  Color(0xff838284),
                                ],
                      onTap: () {
                        switchController.toggleSwitchEmailAuthenticator();
                        Get.to(const GoogleEmailAuthenticator());
                      },
                      switchValue:
                          switchController.isSwitchedEmailAuthenticator.value,
                    ),
                  ),
                ),
                lightImagePath:
                    ImagePath.imagePath.changePasswordLightIconSvgImage,
                darkImagePath: ImagePath.imagePath.changePasswordIconSvgImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
