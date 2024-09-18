import 'package:get/get.dart';

class CustomSwitchController extends GetxController {
  static CustomSwitchController get instance => CustomSwitchController();
  var isSwitched = false.obs;
  var isSwitchedTheme = false.obs;
  var isSwitched2FAAuthentication = false.obs;
  var isSwitchedEmailAuthenticator = false.obs;

  void toggleSwitch() {
    isSwitched.value = !isSwitched.value;
  }

  void toggleSwitchTheme() {
    isSwitchedTheme.value = !isSwitchedTheme.value;
  }

  void toggleSwitch2FAAuthentication() {
    isSwitched2FAAuthentication.value = !isSwitched2FAAuthentication.value;
  }

  void toggleSwitchEmailAuthenticator() {
    isSwitchedEmailAuthenticator.value = !isSwitchedEmailAuthenticator.value;
  }
}
