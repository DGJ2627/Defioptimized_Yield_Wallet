import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Widgets/CustomTextField_Widget.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/EditProfileScreen_View/Controller/EditScreen_Controller.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../Utils/Theme/GradientColor.dart';
import 'ChangeEmailVerification_View.dart';

class EditProfileScreenView extends StatelessWidget {
  const EditProfileScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EditScreenController());
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(20),
                Row(
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
                    const Gap(90),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Edit Profile",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                ImagePath.imagePath.userProfileImage),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 1,
                        bottom: 1,
                        child: Container(
                          alignment: Alignment.center,
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  colors: GradientColor.gradientColor
                                      .gradientPackage1LightColor),
                            ),
                            child: SvgPicture.asset(
                              ImagePath.imagePath.cameraIconSvgImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: CustomTextField(
                      fieldName: 'First Name',
                      filled: true,
                      backgroundTheme: dark
                          ? Colors.white
                          : const Color(0x0fffffff).withOpacity(0.2),
                      textEditingController: controller.firstNameController,
                      prefixIcon: Icon(
                        Iconsax.user,
                        color: dark ? const Color(0xff838284) : Colors.white,
                      ),
                      obscureText: false),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: CustomTextField(
                      fieldName: 'Last Name',
                      filled: true,
                      backgroundTheme: dark
                          ? Colors.white
                          : const Color(0x0fffffff).withOpacity(0.2),
                      textEditingController: controller.lastNameController,
                      prefixIcon: Icon(
                        Iconsax.user,
                        color: dark ? const Color(0xff838284) : Colors.white,
                      ),
                      obscureText: false),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "Change Email",
                    style: GoogleFonts.plusJakartaSans(
                        color: dark ? Colors.black : Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SizedBox(
                    height: 60,
                    child: CustomTextField(
                      fieldName: 'Enter Email Address',
                      filled: true,
                      backgroundTheme: dark
                          ? Colors.white
                          : const Color(0x0fffffff).withOpacity(0.2),
                      textEditingController: controller.changeEmailController,
                      prefixIcon: Icon(
                        Icons.lock_outlined,
                        color: dark ? const Color(0xff838284) : Colors.white,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: GestureDetector(
                            onTap: () =>
                                Get.to(const ChangeEmailVerificationView()),
                            child: Container(
                              alignment: Alignment.center,
                              height: 27,
                              width: 54,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                gradient: LinearGradient(
                                    colors: GradientColor.gradientColor
                                        .gradientPackage1LightColor),
                              ),
                              child: Text(
                                "Verify",
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
                const Gap(240),
                Center(
                  child: CustomButtonWidget(
                    height: 56,
                    width: 335,
                    text: 'Save',
                    onTap: () => Get.back(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
