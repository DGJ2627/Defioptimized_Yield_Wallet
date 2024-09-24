import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../Utils/Theme/GradientText.dart';
import '../../../../Widgets/CustomDialogBox_Widget.dart';
import 'controller/GoogleEmailAuthenticator_controller.dart';

class GoogleEmailAuthenticator extends StatelessWidget {
  const GoogleEmailAuthenticator({super.key});

  @override
  Widget build(BuildContext context) {
    final height = HelperFunction.screenHeight(context);
    final width = HelperFunction.screenWidth(context);
    final googleEmailAuthenticatorController =
        Get.put(GoogleEmailAuthenticatorController());
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark ? Colors.transparent : Colors.black,
        centerTitle: true,
        title: Text(
          "Enable Google Authenticator",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.keyboard_backspace_rounded,
            color: dark ? Colors.black : Colors.white,
          ),
        ),
      ),
      body: Obx(
        () => Stack(
          children: [
            //Dot Navigation
            Container(
              height: height * 0.08,
              width: width,
              decoration: BoxDecoration(
                color: dark
                    ? const Color(0xffF8F8F8)
                    : Colors.white.withOpacity(0.14),
                border:
                    Border.all(color: Colors.white.withOpacity(0.1), width: 1),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        height: height * 0.005,
                        width: width * 0.9,
                        child: AnimatedBottomNavigationBar.builder(
                          itemCount: googleEmailAuthenticatorController
                              .stepNumber.length,
                          backgroundColor: Colors.transparent,
                          gapWidth: width * 0.0010,
                          elevation: 0,
                          tabBuilder: (index, isActive) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                height: height * 0.003,
                                width: width * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    colors: isActive
                                        ? [
                                            const Color(0xff379FFE),
                                            const Color(0xff555DFD),
                                          ]
                                        : [
                                            const Color(0xffDADADA),
                                            const Color(0xffDADADA),
                                          ],
                                  ),
                                ),
                              ),
                            );
                          },
                          activeIndex: googleEmailAuthenticatorController
                              .currentStepIndex.value,
                          onTap: (p0) {},
                        ),
                      ),
                    ),
                    const Gap(20),
                    Text(
                      googleEmailAuthenticatorController.stepNumber[
                              googleEmailAuthenticatorController
                                  .currentStepIndex.value]
                          .toString(),
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: dark ? Colors.black : Colors.white),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: height * 0.9,
              width: width,
              child: PageView(
                controller: googleEmailAuthenticatorController.pageController,
                onPageChanged:
                    googleEmailAuthenticatorController.updatePageIndicator,
                children: [
                  //step:1
                  GoogleAuthenticatorStepCounterWidget(
                    stepNo: "Step 1: Download App",
                    container: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(30),
                        Center(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.transparent,
                            child: SvgPicture.asset(ImagePath
                                .imagePath.googleAuthenticatorAppImageSvgImage),
                          ),
                        ),
                        const Gap(60),
                        Center(
                          child: Text(
                            "Download and install the Google\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Authenticator app",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: dark
                                  ? const Color(0xff838284)
                                  : const Color(0xff777B95),
                            ),
                          ),
                        ),
                        const Gap(50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 160,
                              child: SvgPicture.asset(
                                  ImagePath.imagePath.playStoreImageSvgImage),
                            ),
                            SizedBox(
                              height: 50,
                              width: 160,
                              child: SvgPicture.asset(
                                  ImagePath.imagePath.appStoreImageSvgImage),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //step:2
                  GoogleAuthenticatorStepCounterWidget(
                    stepNo: "Step 2: Scan QR Code",
                    container: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Scan this QR code in the Google\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Authenticator app",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: dark
                                  ? const Color(0xff838284)
                                  : const Color(0xff777B95),
                            ),
                          ),
                        ),
                        const Gap(20),
                        Center(
                          child: SizedBox(
                            height: height * 0.24,
                            width: width * 0.5,
                            child: SvgPicture.asset(dark
                                ? ImagePath.imagePath.qrCodeLightImageSvgImage
                                : ImagePath.imagePath.qrCodeImageSvgImage),
                          ),
                        ),
                        const Gap(30),
                        Center(
                          child: Text(
                            "If you are unable to scan the QR code, please\n \t\t\t\t\t\t\t\t enter this code manually into the app.",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: dark
                                  ? const Color(0xff838284)
                                  : const Color(0xff777B95),
                            ),
                          ),
                        ),
                        const Gap(50),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.1),
                                  width: 1),
                              borderRadius: BorderRadius.circular(30),
                              color: dark
                                  ? const Color(0xffF8F8F8)
                                  : Colors.white.withOpacity(0.1),
                            ),
                            height: height * 0.06,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "jnmjkintcftgttgtgh362yyyyyhjuhyjuik",
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: dark
                                        ? const Color(0xff838284)
                                        : const Color(0xff777B95),
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: dark
                                          ? [
                                              const Color(0xff379FFE),
                                              const Color(0xff555DFD)
                                            ]
                                          : [
                                              const Color(0xff3B82F6),
                                              const Color(0xff3B82F6),
                                            ],
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  height: height * 0.1,
                                  width: width * 0.1,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Iconsax.copy,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //step:3
                  GoogleAuthenticatorStepCounterWidget(
                    stepNo: "Step 3: Backup Key",
                    container: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Please save this key on paper. This Key will\n \t\t\t\t\t\t\t\t allow you to recover your Google\n \t\t\t\t\t\t Authenticator in case of phone loss.",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: dark
                                  ? const Color(0xff838284)
                                  : const Color(0xff777B95),
                            ),
                          ),
                        ),
                        const Gap(40),
                        Center(
                          child: SizedBox(
                            height: height * 0.16,
                            width: width * 0.5,
                            child: SvgPicture.asset(
                                ImagePath.imagePath.backUpImageSvgImage),
                          ),
                        ),
                        const Gap(40),
                        Center(
                          child: Text(
                            "Resetting your Google Authentication requires\n \t\t\topening a support ticket and takes at least 7\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdays to process.",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: dark
                                  ? const Color(0xff838284)
                                  : const Color(0xff777B95),
                            ),
                          ),
                        ),
                        const Gap(30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.1),
                                  width: 1),
                              borderRadius: BorderRadius.circular(30),
                              color: dark
                                  ? const Color(0xffF8F8F8)
                                  : Colors.white.withOpacity(0.1),
                            ),
                            height: height * 0.06,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "jnmjkintcftgttgtgh362yyyyyhjuhyjuik",
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: dark
                                        ? const Color(0xff838284)
                                        : const Color(0xff777B95),
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: dark
                                          ? [
                                              const Color(0xff379FFE),
                                              const Color(0xff555DFD)
                                            ]
                                          : [
                                              const Color(0xff3B82F6),
                                              const Color(0xff3B82F6),
                                            ],
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  height: height * 0.1,
                                  width: width * 0.1,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Iconsax.copy,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //step:4
                  GoogleAuthenticatorStepCounterWidget(
                    stepNo: "Step 4: Enabled Google Authenticator",
                    container: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(10),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //6 code verification
                              Text(
                                "Enter the 6 - digit code send to John@...",
                                style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: dark ? Colors.black : Colors.white),
                              ),
                              const Gap(10),
                              SizedBox(
                                height: height * 0.066,
                                width: width * 0.86,
                                child: TextFormField(
                                  controller: googleEmailAuthenticatorController
                                      .sixDigitCodeController,
                                  decoration: InputDecoration(
                                    labelText: "Enter the 6 digit code ",
                                    labelStyle: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: dark
                                          ? const Color(0xff737175)
                                          : const Color(0xff777B95),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: dark
                                            ? const Color(0xffE4DFDF)
                                            : const Color(0x0fffffff)
                                                .withOpacity(0.2),
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    suffixIcon: TextButton(
                                      onPressed: () {},
                                      child: GradientText(
                                        'Send Code',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xff379FFE),
                                            Color(0xff555DFD),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const Gap(30),
                              //google verification
                              Text(
                                "Google verification code",
                                style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: dark ? Colors.black : Colors.white),
                              ),
                              const Gap(10),
                              SizedBox(
                                height: height * 0.066,
                                width: width * 0.86,
                                child: TextFormField(
                                  controller: googleEmailAuthenticatorController
                                      .sixDigitCodeController,
                                  decoration: InputDecoration(
                                    labelText: "Enter the 6 digit code ",
                                    labelStyle: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: dark
                                          ? const Color(0xff737175)
                                          : const Color(0xff777B95),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: dark
                                            ? const Color(0xffE4DFDF)
                                            : const Color(0x0fffffff)
                                                .withOpacity(0.2),
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Next and previous button
            (googleEmailAuthenticatorController.currentStepIndex.value < 1)
                ? Positioned(
                    bottom: 40,
                    left: 20,
                    right: 20,
                    child: CustomButtonWidget(
                      height: height * 0.07,
                      width: width * 0.8,
                      text: "Done",
                      onTap: () {
                        googleEmailAuthenticatorController.nextPage();
                      },
                    ),
                  )
                : Positioned(
                    bottom: 50,
                    left: 20,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            googleEmailAuthenticatorController.backPage();
                          },
                          child: Container(
                            alignment: AlignmentDirectional.center,
                            height: height * 0.06,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                color: dark
                                    ? const Color(0xffE4DFDF)
                                    : const Color(0xff777B95),
                              ),
                            ),
                            child: Text(
                              "Previous",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: dark
                                      ? const Color(0xff838284)
                                      : const Color(0xff777B95)),
                            ),
                          ),
                        ),
                        CustomButtonWidget(
                          height: height * 0.06,
                          width: width * 0.4,
                          text: (googleEmailAuthenticatorController
                                      .currentStepIndex.value ==
                                  3)
                              ? "Submit"
                              : "Next",
                          onTap: () {
                            (googleEmailAuthenticatorController
                                        .currentStepIndex.value ==
                                    3)
                                ? Get.defaultDialog(
                                    radius: 10,
                                    backgroundColor:
                                        dark ? Colors.white : Colors.black45,
                                    title: "",
                                    titleStyle: const TextStyle(fontSize: 0),
                                    content: CustomDialogBox(
                                      btnOnTap: () {
                                        // Get.back(result: true);
                                        // Get.back(result: true);
                                        Get.until((route) =>
                                            Get.currentRoute ==
                                            '/SecurityView');
                                      },
                                      btnText: "Done",
                                      dialogTitle:
                                          "Google Authenticator has\n been set up successfully.",
                                      dialogSubTitle:
                                          "You have successfully enabled Google \n\t\t\t\t\t\t\t\t\t Authenticator for your account.",
                                    ),
                                  )
                                : googleEmailAuthenticatorController.nextPage();
                          },
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

class GoogleAuthenticatorStepCounterWidget extends StatelessWidget {
  const GoogleAuthenticatorStepCounterWidget({
    super.key,
    required this.stepNo,
    required this.container,
  });

  final String stepNo;
  final Widget container;

  @override
  Widget build(BuildContext context) {
    final height = HelperFunction.screenHeight(context);
    final width = HelperFunction.screenWidth(context);
    final dark = HelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 50, top: 8),
      child: Center(
        child: SizedBox(
          height: height * 0.7,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    stepNo,
                    style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: dark ? Colors.black : Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: container,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
