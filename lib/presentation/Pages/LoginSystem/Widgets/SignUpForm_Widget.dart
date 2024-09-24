import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/ForgotPassword_View/ForgotPasswordScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/SignUpVerification_View.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Widgets/CustomTextField_Widget.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../Controller/Login_Controller.dart';
import '../Controller/PasswordShow_Controller.dart';
import 'CustomCheckBoxController.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final controller = Get.put(LoginController());
    final buttonHeight = HelperFunction.screenHeight(context);
    final buttonWidth = HelperFunction.screenWidth(context);
    final dark = HelperFunction.isDarkMode(context);
    final passwordShowController = Get.put(PasswordShowController());
    final Hight = HelperFunction.screenHeight(context);
    return Obx(
      () => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                //Name text field
                CustomTextField(
                    validator: (val) {
                      return null;
                    },
                    onSaved: (val) {},
                    fieldName: "First Name",
                    filled: true,
                    backgroundTheme: dark
                        ? Colors.white
                        : const Color(0x0fffffff).withOpacity(0.2),
                    textEditingController: controller.userFirstNameController,
                    prefixIcon: Icon(
                      Iconsax.user,
                      color: dark ? const Color(0xffE4DFDF) : Colors.white,
                    ),
                    obscureText: false),

                SizedBox(
                  height: Hight * 0.020,
                ),

                CustomTextField(
                    validator: (val) {
                      return null;
                    },
                    onSaved: (val) {},
                    fieldName: "Last Name",
                    filled: true,
                    backgroundTheme: dark
                        ? Colors.white
                        : const Color(0x0fffffff).withOpacity(0.2),
                    textEditingController: controller.userLastNameController,
                    prefixIcon: Icon(
                      Iconsax.user,
                      color: dark ? const Color(0xffE4DFDF) : Colors.white,
                    ),
                    obscureText: false),

                SizedBox(
                  height: Hight * 0.020,
                ),

                //Email text field
                CustomTextField(
                    validator: (val) {
                      return null;
                    },
                    onSaved: (val) {},
                    fieldName: "Enter Email Address",
                    filled: true,
                    backgroundTheme: dark
                        ? Colors.white
                        : const Color(0x0fffffff).withOpacity(0.2),
                    textEditingController: controller.emailController,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: dark ? const Color(0xffE4DFDF) : Colors.white,
                    ),
                    obscureText: false),

                SizedBox(
                  height: Hight * 0.020,
                ),

                //password field
                CustomTextField(
                  validator: (val) {
                    return null;
                  },
                  onSaved: (val) {},
                  fieldName: "Your Password",
                  filled: true,
                  backgroundTheme: dark
                      ? Colors.white
                      : const Color(0x0fffffff).withOpacity(0.2),
                  textEditingController: controller.passwordController,
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: dark ? const Color(0xffE4DFDF) : Colors.white,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      passwordShowController
                              .isObscureTextCreateNewPassword.value =
                          !passwordShowController
                              .isObscureTextCreateNewPassword.value;
                    },
                    icon: passwordShowController
                            .isObscureTextCreateNewPassword.value
                        ? Icon(
                            CupertinoIcons.eye_slash,
                            color:
                                dark ? const Color(0xffE4DFDF) : Colors.white,
                          )
                        : Icon(
                            CupertinoIcons.eye,
                            color:
                                dark ? const Color(0xffE4DFDF) : Colors.white,
                          ),
                  ),
                  obscureText: passwordShowController
                      .isObscureTextCreateNewPassword.value,
                ),

                SizedBox(
                  height: Hight * 0.020,
                ),

                //confirm password field
                CustomTextField(
                  validator: (val) {
                    return null;
                  },
                  onSaved: (val) {},
                  fieldName: "Confirm Password",
                  filled: true,
                  backgroundTheme: dark
                      ? Colors.white
                      : const Color(0x0fffffff).withOpacity(0.2),
                  textEditingController: controller.confirmSignUpController,
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: dark ? const Color(0xffE4DFDF) : Colors.white,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      passwordShowController
                              .isObscureTextConfirmPassword.value =
                          !passwordShowController
                              .isObscureTextConfirmPassword.value;
                    },
                    icon: passwordShowController
                            .isObscureTextConfirmPassword.value
                        ? Icon(
                            CupertinoIcons.eye_slash,
                            color:
                                dark ? const Color(0xffE4DFDF) : Colors.white,
                          )
                        : Icon(
                            CupertinoIcons.eye,
                            color:
                                dark ? const Color(0xffE4DFDF) : Colors.white,
                          ),
                  ),
                  obscureText:
                      passwordShowController.isObscureTextConfirmPassword.value,
                ),

                SizedBox(
                  height: Hight * 0.020,
                ),

                //check box
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const ForgotPasswordScreen());
                    },
                    child: Row(
                      children: [
                        const CustomCheckBoxWidget(),
                        const Gap(10),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "I Agree  ",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95),
                                ),
                              ),
                              TextSpan(
                                text: "Terms of Service ",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: dark ? Colors.black : Colors.white,
                                    decoration: TextDecoration.underline),
                              ),
                              TextSpan(
                                text: " & ",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: dark ? Colors.black : Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: "Privacy Policy.",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: dark ? Colors.black : Colors.white,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: Hight * 0.030,
                ),

                CustomButtonWidget(
                  height: buttonHeight * 0.07,
                  width: buttonWidth * 0.7,
                  text: "Sign Up",
                  onTap: () {
                    Get.to(() => const SignUpVerificationScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
