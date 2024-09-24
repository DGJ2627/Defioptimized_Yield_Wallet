import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/presentation/Pages/BottomNavigationScreen/BottomNavigationScreen_VIew.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/ForgotPassword_View/ForgotPasswordScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Widgets/CustomTextField_Widget.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/Login_Controller.dart';
import '../Controller/PasswordShow_Controller.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
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
    final Width = HelperFunction.screenWidth(context);
    return Obx(
      () => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
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
                      passwordShowController.isObscureText.value =
                          !passwordShowController.isObscureText.value;
                    },
                    icon: passwordShowController.isObscureText.value
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
                  obscureText: passwordShowController.isObscureText.value,
                ),

                SizedBox(
                  height: Hight * 0.020,
                ),

                //forgot password
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const ForgotPasswordScreen());
                    },
                    child: Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),

                SizedBox(
                  height: Hight * 0.030,
                ),

                CustomButtonWidget(
                  height: buttonHeight * 0.07,
                  width: buttonWidth * 0.7,
                  text: "Sign In",
                  onTap: () {
                    Get.to(() => const BottomNavigationScreen());
                  },
                ),
                SizedBox(
                  height: Hight * 0.030,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
