import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/presentation/Pages/BottomNavigationScreen/BottomNavigationScreen_VIew.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Widgets/CustomTextField_Widget.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/ChangePassword_View/Controller/ChangePassword_Controller.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Widgets/CustomDialogBox_Widget.dart';
import '../../LoginSystem/Controller/PasswordShow_Controller.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final emailEvent = Get.put(ChangePasswordController());
    final passwordShowController = Get.put(PasswordShowController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
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
                    "Change Password",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Container(
                    width: 50,
                  ),
                ],
              ),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Your new password must be different from previous used password.",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              const Gap(30),

              //old password
              CustomTextField(
                fieldName: 'Enter Old Password',
                filled: true,
                backgroundTheme: Colors.transparent,
                textEditingController: emailEvent.oldPasswordController,
                prefixIcon: const Icon(CupertinoIcons.lock),
                obscureText:
                    passwordShowController.isObscureTextOldPassword.value,
                suffixIcon: IconButton(
                  onPressed: () {
                    passwordShowController.isObscureTextOldPassword.value =
                        !passwordShowController.isObscureTextOldPassword.value;
                  },
                  icon: passwordShowController.isObscureTextOldPassword.value
                      ? Icon(
                          CupertinoIcons.eye_slash,
                          color: dark ? const Color(0xffE4DFDF) : Colors.white,
                        )
                      : Icon(
                          CupertinoIcons.eye,
                          color: dark ? const Color(0xffE4DFDF) : Colors.white,
                        ),
                ),
              ),

              const Gap(10),
              Text(
                "Forget Password?",
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color(0xffFF3B30),
                ),
              ),
              const Gap(10),

              //create new password
              CustomTextField(
                fieldName: 'New Password',
                filled: true,
                backgroundTheme: Colors.transparent,
                textEditingController: emailEvent.oldPasswordController,
                prefixIcon: const Icon(CupertinoIcons.lock),
                obscureText:
                    passwordShowController.isObscureTextNewPassword.value,
                suffixIcon: IconButton(
                  onPressed: () {
                    passwordShowController.isObscureTextNewPassword.value =
                        !passwordShowController.isObscureTextNewPassword.value;
                  },
                  icon: passwordShowController.isObscureTextNewPassword.value
                      ? Icon(
                          CupertinoIcons.eye_slash,
                          color: dark ? const Color(0xffE4DFDF) : Colors.white,
                        )
                      : Icon(
                          CupertinoIcons.eye,
                          color: dark ? const Color(0xffE4DFDF) : Colors.white,
                        ),
                ),
              ),
              const Gap(20),

              //confirm new password
              CustomTextField(
                fieldName: 'Confirm Password',
                filled: true,
                backgroundTheme: Colors.transparent,
                textEditingController: emailEvent.oldPasswordController,
                prefixIcon: const Icon(CupertinoIcons.lock),
                obscureText: passwordShowController
                    .isObscureTextConfirmNewPassword.value,
                suffixIcon: IconButton(
                  onPressed: () {
                    passwordShowController
                            .isObscureTextConfirmNewPassword.value =
                        !passwordShowController
                            .isObscureTextConfirmNewPassword.value;
                  },
                  icon: passwordShowController
                          .isObscureTextConfirmNewPassword.value
                      ? Icon(
                          CupertinoIcons.eye_slash,
                          color: dark ? const Color(0xffE4DFDF) : Colors.white,
                        )
                      : Icon(
                          CupertinoIcons.eye,
                          color: dark ? const Color(0xffE4DFDF) : Colors.white,
                        ),
                ),
              ),

              const Gap(320),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomButtonWidget(
                  height: 56,
                  width: 335,
                  text: 'Save Password',
                  onTap: () {
                    Get.defaultDialog(
                      radius: 10,
                      backgroundColor: dark ? Colors.white : Colors.black45,
                      title: "",
                      titleStyle: const TextStyle(fontSize: 0),
                      content: CustomDialogBox(
                        btnOnTap: () {
                          Get.offAll(const BottomNavigationScreen());
                        },
                        btnText: "Done",
                        dialogTitle: "Password Change!",
                        dialogSubTitle:
                            "Your Password has been changed  \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully.",
                      ),
                    );
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
