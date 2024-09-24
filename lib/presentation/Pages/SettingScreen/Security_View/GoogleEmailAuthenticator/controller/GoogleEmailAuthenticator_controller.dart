import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoogleEmailAuthenticatorController extends GetxController {
  static GoogleEmailAuthenticatorController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentStepIndex = 0.obs;
  final sixDigitCodeController = TextEditingController();
  final googleVerificationDigitCodeController = TextEditingController();

  void updatePageIndicator(index) => currentStepIndex.value = index;

  void dotNavigationClick(index) {
    currentStepIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentStepIndex.value < 3) {
      int page = currentStepIndex.value + 1;
      dotNavigationClick(page);
      pageController.jumpToPage(page);
    } else {
      return;
    }
  }

  void backPage() {
    if (currentStepIndex.value > 0) {
      int page = currentStepIndex.value - 1;
      dotNavigationClick(page);
      pageController.jumpToPage(page);
    } else {}
  }

  List<String> stepNumber = [
    "Download App",
    "Scan QR Code",
    "Backup Key",
    "Enabled Google Authenticator",
  ];
}
