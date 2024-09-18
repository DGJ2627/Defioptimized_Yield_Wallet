import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Controller/KeyBoardController.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/SignUpConfirmPassword.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/Helper/Helper.dart';
import 'ForgotPassword_View/Widgets/CustomOtpField_Widget.dart';
import 'Widgets/NumericKeypad _Widget.dart';

class SignUpSetPasswordScreen extends StatelessWidget {
  const SignUpSetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(KeyBoardController());
    final dark = HelperFunction.isDarkMode(context);
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: dark ? Colors.white : const Color(0xff26283166),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: dark ? Colors.white : Colors.black,
        title: Text(
          "Set  Passcode",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        centerTitle: true,
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
            SizedBox(
              height: Height * 0.02,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Please Set your Transaction Passcode",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            SizedBox(
              height: Height * 0.04,
            ),
            Center(
              child: CustomOtpField(
                controller: controller.setPasswordController,
              ),
            ),

            SizedBox(
              height: Height * 0.04,
            ),

            //custom keyboard
            SizedBox(
              height: Height * 0.5,
              width: double.infinity,
              child: const NumericKeypadWidget(),
            ),

            SizedBox(
              height: Height * 0.03,
            ),

            //confirm btn
            Align(
              alignment: Alignment.bottomCenter,
              child: Align(
                alignment: Alignment.center,
                child: CustomButtonWidget(
                    onTap: () {
                      Get.to(const SignUpConfirmPassword());
                    },
                    height: Height * 0.07,
                    width: Width * 0.8,
                    text: "Confirm"),
              ),
            ),
            SizedBox(
              height: Height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
