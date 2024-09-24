import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../Utils/Helper/Helper.dart';
import '../../../LoginSystem/Controller/Login_Controller.dart';
import '../../../LoginSystem/ForgotPassword_View/Widgets/CustomOtpField_Widget.dart';
import '../../../LoginSystem/ForgotPassword_View/Widgets/OtpTimer_Widget.dart';
import '../../../LoginSystem/SignUpSetPassword_View.dart';
import '../Security_View.dart';

class EmailAuthenticatorView extends StatelessWidget {
  const EmailAuthenticatorView({super.key});

  @override
  Widget build(BuildContext context) {
    final timerController = Get.put(OtpTimerController());
    final controller = Get.put(LoginController());
    final dark = HelperFunction.isDarkMode(context);
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: dark ? Colors.white : const Color(0xff26283166),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: dark ? Colors.white : Colors.black,
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          "Enable Email Authenticator",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.keyboard_backspace_rounded,
              color: dark ? Colors.black : Colors.white,
              size: Height * 0.03,
            )),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "OTP has been sent on",
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color:
                      dark ? const Color(0xff838284) : const Color(0xff777B95)),
            ),
            const Gap(10),
            Text(
              " joha***********@gmail.com",
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: dark ? const Color(0xff838284) : Colors.white),
            ),

            SizedBox(
              height: Height * 0.02,
            ),
            Text(
              "Please check your email for the 4 digit OTP code and enter it below",
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color:
                      dark ? const Color(0xff838284) : const Color(0xff777B95)),
            ),
            SizedBox(
              height: Height * 0.04,
            ),
            Center(
              child: CustomOtpField(
                controller: controller.otpCodeController,
              ),
            ),
            SizedBox(
              height: Height * 0.06,
            ),
            //send btn

            Align(
              alignment: Alignment.center,
              child: CustomButtonWidget(
                height: Height * 0.07,
                width: Width * 0.8,
                text: 'Continue',
                onTap: () {
                  Get.back(result: true);
                },
              ),
            ),

            SizedBox(
              height: Height * 0.03,
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Re-send code in",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  SizedBox(
                    width: Width * 0.01,
                  ),
                  Obx(
                    () => Text(
                      "0:${timerController.sec.value}",
                      style: GoogleFonts.plusJakartaSans(
                          color: dark
                              ? const Color(0xff20002C).withOpacity(0.8)
                              : Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
