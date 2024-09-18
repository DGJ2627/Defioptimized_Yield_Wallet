import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Controller/Login_Controller.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/ForgotPassword_View/Verification_View.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Widgets/CustomTextField_Widget.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final dark = HelperFunction.isDarkMode(context);
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    return Scaffold(
      backgroundColor: dark ? Colors.white : const Color(0xff26283166),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: dark ? Colors.white : Colors.black,
        toolbarHeight: 100,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.keyboard_backspace_rounded,
              color: dark ? Colors.black : Colors.white,
              size: Height * 0.04,
            )),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot PassWord",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: Height * 0.030,
            ),
            Text(
              "Please enter your Email Address. You will receive a 4-digit code via SMS.",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SizedBox(
              height: Height * 0.030,
            ),
            CustomTextField(
              fieldName: "Enter Email Address",
              filled: true,
              backgroundTheme:
                  dark ? Colors.white : const Color(0x0fffffff).withOpacity(0.2),
              textEditingController: controller.forgotEmailController,
              prefixIcon: Icon(
                Icons.email_outlined,
                color: dark ? const Color(0xffE4DFDF) : Colors.white,
              ),
              obscureText: false,
            ),
            SizedBox(
              height: Height * 0.060,
            ),

            //send btn

            Align(
              alignment: Alignment.center,
              child: CustomButtonWidget(
                  onTap: () {
                    Get.to(const VerificationScreen());
                  },
                  height: Height * 0.07,
                  width: Width * 0.8,
                  text: "Send"),
            ),
          ],
        ),
      ),
    );
  }
}
