import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/KYCVerification_View/Controller/CustomRadioButtonController.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../Utils/Helper/Helper.dart';
import '../../../Widgets/CustomDialogBox_Widget.dart';
import '../../BottomNavigationScreen/BottomNavigationScreen_VIew.dart';
import 'Widget/CustomRadioButton_Widget.dart';

class KYCVerificationView extends StatelessWidget {
  const KYCVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final radioController = Get.put(CustomRadioButtonController());
    return Obx(
      () => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(40),
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
                    "KYC",
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
                  "Proof of Identity",
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: dark ? Colors.black : Colors.white),
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has beenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been",
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: dark
                          ? const Color(0xff838284)
                          : const Color(0xff777B95)),
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Choose Your Identity Type",
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: dark ? Colors.black : Colors.white),
                ),
              ),
              const Gap(20),
              Container(
                alignment: Alignment.center,
                height: 390,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomRadioButtonWidget(
                            onTap: () {
                              radioController.changeIdCardValue();
                            },
                            isChangeValue:
                                radioController.isIdCardSelected.value,
                            radioButtonName: "ID Card",
                          ),
                          CustomRadioButtonWidget(
                            onTap: () {
                              radioController.changePassportValue();
                            },
                            isChangeValue:
                                radioController.isPassportSelected.value,
                            radioButtonName: "Passport",
                          ),
                          CustomRadioButtonWidget(
                            onTap: () {
                              radioController.changeDrivingLicenseValue();
                            },
                            isChangeValue:
                                radioController.isDrivingLicenseSelected.value,
                            radioButtonName: "Driving License",
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                        height: 350,
                        width: double.infinity,
                        child: Column(
                          children: [
                            DottedBorder(
                              dashPattern: const [8, 4],
                              strokeWidth: 2,
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(16),
                              color: dark
                                  ? const Color(0xffB3B3B3).withOpacity(0.2)
                                  : Colors.transparent,
                              child: Container(
                                height: 156,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: dark
                                      ? const Color(0xffF8F8F8)
                                      : Colors.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      alignment: AlignmentDirectional.center,
                                      width: 50,
                                      height: 50,
                                      child: SvgPicture.asset(
                                        dark
                                            ? ImagePath.imagePath
                                                .imageUploadIconSvgImage
                                            : ImagePath.imagePath
                                                .imageUploadDarkIconSvgImage,
                                      ),
                                    ),
                                    const Gap(10),
                                    Text(
                                      "Upload Proof ID Card",
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: dark
                                              ? Colors.black
                                              : Colors.white),
                                    ),
                                    const Gap(5),
                                    Text(
                                      "Front Side",
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: dark
                                              ? const Color(0xff838284)
                                              : const Color(0xff777B95)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(30),
                            DottedBorder(
                              dashPattern: const [8, 4],
                              strokeWidth: 2,
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(16),
                              color: dark
                                  ? const Color(0xffB3B3B3).withOpacity(0.2)
                                  : Colors.transparent,
                              child: Container(
                                height: 156,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: dark
                                      ? const Color(0xffF8F8F8)
                                      : Colors.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      alignment: AlignmentDirectional.center,
                                      width: 50,
                                      height: 50,
                                      child: SvgPicture.asset(
                                        dark
                                            ? ImagePath.imagePath
                                                .imageUploadIconSvgImage
                                            : ImagePath.imagePath
                                                .imageUploadDarkIconSvgImage,
                                      ),
                                    ),
                                    const Gap(10),
                                    Text(
                                      "Upload Proof ID Card",
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: dark
                                              ? Colors.black
                                              : Colors.white),
                                    ),
                                    const Gap(5),
                                    Text(
                                      "Back Side",
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: dark
                                              ? const Color(0xff838284)
                                              : const Color(0xff777B95)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Center(
                child: CustomButtonWidget(
                  height: 56,
                  width: 335,
                  text: 'Save',
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
                        dialogTitle: "Submitted Successfully!",
                        dialogSubTitle:
                            "Thank you for submitting your KYC documents, we are review your documents with in 2 business days.",
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
