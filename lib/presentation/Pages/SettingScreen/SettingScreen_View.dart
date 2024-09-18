import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/ChangePassword_View/ChangePassword_View.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/EditProfileScreen_View/EditProfileScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/KYCVerification_View/KYCVerification_View.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/Security_View/Security_View.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../../../Utils/Theme/GradientColor.dart';
import 'Controller/Switch_Controller.dart';
import 'Widget/CustomSwitch_Widget.dart';
import 'Widget/SettingOptionsCustom_Widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final switchController = Get.put(CustomSwitchController());
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SafeArea(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(30),
                  Container(
                    height: 60,
                    width: 335,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  ImagePath.imagePath.userProfileImage),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Robert Fox",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: dark ? Colors.black : Colors.white,
                              ),
                            ),
                            Text(
                              "robertfox34@gmail.com",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: dark
                                    ? const Color(0xff838284)
                                    : const Color(0xff777B95),
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () => Get.to(const EditProfileScreenView()),
                          child: Container(
                            alignment: Alignment.center,
                            height: 27,
                            width: 83,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              gradient: LinearGradient(
                                  colors: GradientColor.gradientColor
                                      .gradientPackage1LightColor),
                            ),
                            child: Text(
                              "Edit Profile",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      height: 1,
                      color: dark
                          ? const Color(0xffE4DFDF)
                          : const Color(0xffF8F8F8),
                    ),
                  ),
                  const Gap(15),
                  SizedBox(
                    height: 570,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          //change password
                          SettingOptionsCustomWidget(
                            customTrailingExpanded: 2,
                            lightImagePath: ImagePath
                                .imagePath.changePasswordLightIconSvgImage,
                            darkImagePath:
                                ImagePath.imagePath.changePasswordIconSvgImage,
                            optionName: "Change Password",
                            trailing: Icon(
                              Iconsax.arrow_right_3,
                              color: dark ? Colors.black : Colors.white,
                            ),
                            onTap: () => Get.to(const ChangePasswordView()),
                          ),
                          const Gap(10),

                          //kyc verification
                          SettingOptionsCustomWidget(
                            onTap: () => Get.to(const KYCVerificationView()),
                            customTrailingExpanded: 2,
                            lightImagePath: ImagePath
                                .imagePath.kycVerificationLightIconSvgImage,
                            darkImagePath:
                                ImagePath.imagePath.kycVerificationIconSvgImage,
                            optionName: "KYC Verification",
                            trailing: Icon(
                              Iconsax.arrow_right_3,
                              color: dark ? Colors.black : Colors.white,
                            ),
                          ),
                          const Gap(10),

                          //security
                          SettingOptionsCustomWidget(
                            onTap: () => Get.to(const SecurityView()),
                            customTrailingExpanded: 2,
                            lightImagePath:
                                ImagePath.imagePath.securityLightIconSvgImage,
                            darkImagePath:
                                ImagePath.imagePath.securityIconSvgImage,
                            optionName: "Security",
                            trailing: Icon(
                              Iconsax.arrow_right_3,
                              color: dark ? Colors.black : Colors.white,
                            ),
                          ),
                          const Gap(10),

                          //push notification
                          SettingOptionsCustomWidget(
                            customTrailingExpanded: 2,
                            lightImagePath: ImagePath
                                .imagePath.pushNotificationLightIconSvgImage,
                            darkImagePath: ImagePath
                                .imagePath.pushNotificationIconSvgImage,
                            optionName: "Push Notification",
                            trailing: Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: CustomSwitch(
                                onTap: () => switchController.toggleSwitch,
                                switchValue: switchController.isSwitched.value,
                              ),
                            ),
                          ),

                          const Gap(10),

                          //get support
                          SettingOptionsCustomWidget(
                            customTrailingExpanded: 2,
                            lightImagePath:
                                ImagePath.imagePath.getSupportLightIconSvgImage,
                            darkImagePath:
                                ImagePath.imagePath.getSupportIconSvgImage,
                            optionName: "Get Support",
                            trailing: Icon(
                              Iconsax.arrow_right_3,
                              color: dark ? Colors.black : Colors.white,
                            ),
                          ),
                          const Gap(10),

                          //terms of services
                          SettingOptionsCustomWidget(
                            customTrailingExpanded: 2,
                            lightImagePath: ImagePath
                                .imagePath.termsOfServicesLightIconSvgImage,
                            darkImagePath:
                                ImagePath.imagePath.termsOfServicesIconSvgImage,
                            optionName: "Terms of Services",
                            trailing: Icon(
                              Iconsax.arrow_right_3,
                              color: dark ? Colors.black : Colors.white,
                            ),
                          ),
                          const Gap(10),

                          //privacy policy
                          SettingOptionsCustomWidget(
                            customTrailingExpanded: 2,
                            lightImagePath: ImagePath
                                .imagePath.privacyPolicyLightIconSvgImage,
                            darkImagePath:
                                ImagePath.imagePath.privacyPolicyIconSvgImage,
                            optionName: "Privacy Policy",
                            trailing: Icon(
                              Iconsax.arrow_right_3,
                              color: dark ? Colors.black : Colors.white,
                            ),
                          ),
                          const Gap(10),

                          //theme
                          SettingOptionsCustomWidget(
                            customTrailingExpanded: 6,
                            lightImagePath:
                                ImagePath.imagePath.appThemeLightIconSvgImage,
                            darkImagePath:
                                ImagePath.imagePath.appThemeIconSvgImage,
                            optionName: (switchController.isSwitchedTheme.value)
                                ? "Theme(Light)"
                                : "Theme(Dark)",
                            trailing: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Iconsax.sun_1),
                                ),
                                CustomSwitch(
                                  onTap: () =>
                                      switchController.toggleSwitchTheme,
                                  switchValue:
                                      switchController.isSwitchedTheme.value,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Iconsax.sun_1),
                                ),
                              ],
                            ),
                          ),
                          const Gap(10),

                          //logout
                          SettingOptionsCustomWidget(
                            customTrailingExpanded: 2,
                            lightImagePath:
                                ImagePath.imagePath.logoutLightIconSvgImage,
                            darkImagePath:
                                ImagePath.imagePath.logoutIconSvgImage,
                            optionName: "Logout",
                            trailing: Icon(
                              Iconsax.arrow_right_3,
                              color: dark ? Colors.black : Colors.white,
                            ),
                          ),
                          const Gap(10),
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
