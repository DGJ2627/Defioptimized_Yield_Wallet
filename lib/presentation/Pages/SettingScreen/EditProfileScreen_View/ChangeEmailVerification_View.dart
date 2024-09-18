import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../Utils/Helper/Helper.dart';
import '../../../Widgets/CustomDialogBox_Widget.dart';
import '../../BottomNavigationScreen/BottomNavigationScreen_VIew.dart';
import '../../LoginSystem/ForgotPassword_View/Widgets/CustomOtpField_Widget.dart';
import '../../LoginSystem/ForgotPassword_View/Widgets/OtpTimer_Widget.dart';
import 'Controller/ChangeEmailVerification_Controller.dart';

class ChangeEmailVerificationView extends StatelessWidget {
  const ChangeEmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final timerController = Get.put(OtpTimerController());
    final controller = Get.put(ChangeEmailVerificationController());
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
              "Verification",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: Height * 0.02,
            ),
            Text(
              "Please check your email for the 4 digit OTP code and enter it below",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SizedBox(
              height: Height * 0.02,
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
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  radius: 10,
                  backgroundColor: dark ? Colors.white : Colors.black45,
                  title: "",
                  titleStyle: const TextStyle(fontSize: 0),
                  content: CustomDialogBox(
                    btnOnTap: () {
                      //Home Screen
                      Get.offAll(const BottomNavigationScreen());
                    },
                    btnText: "Done",
                    dialogTitle: "Password Change!",
                    dialogSubTitle:
                        "Your Password has been changed  \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully.",
                  ),
                );
              },
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  height: Height * 0.07,
                  width: Width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: const Alignment(0, -2),
                      end: const Alignment(0, 0.4),
                      colors: dark
                          ? [
                              const Color(0xff20002C),
                              const Color(0xff492C54),
                            ]
                          : [const Color(0xff3B82F6), const Color(0xff3B82F6)],
                    ),
                  ),
                  child: Text(
                    "Send",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
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
