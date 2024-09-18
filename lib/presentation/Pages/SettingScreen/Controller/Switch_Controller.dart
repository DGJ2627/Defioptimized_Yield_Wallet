import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/Theme/AppTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CustomSwitchController extends GetxController {
  static CustomSwitchController get instance => CustomSwitchController();
  var isSwitched = true.obs;
  var isSwitchedTheme = false.obs;
  var isSwitched2FAAuthentication = true.obs;
  var isSwitchedEmailAuthenticator = false.obs;

  void toggleSwitch() {
    isSwitched.value = !isSwitched.value;
  }

  void toggleSwitchTheme() {
    isSwitchedTheme.value = !isSwitchedTheme.value;
    isSwitchedTheme.value ? AppTheme.lightTheme : AppTheme.darkTheme;
  }

  void toggleSwitch2FAAuthentication() {
    isSwitched2FAAuthentication.value = !isSwitched2FAAuthentication.value;
  }

  void toggleSwitchEmailAuthenticator() {
    isSwitchedEmailAuthenticator.value = !isSwitchedEmailAuthenticator.value;
  }
}
