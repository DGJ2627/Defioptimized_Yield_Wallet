import 'package:get/get.dart';

class PasswordShowController extends GetxController {
  PasswordShowController get instance => Get.find();

  Rx<bool> isObscureText = false.obs;
  Rx<bool> isObscureTextCreateNewPassword = false.obs;
  Rx<bool> isObscureTextConfirmPassword = false.obs;

  Rx<bool> isObscureTextOldPassword = false.obs;
  Rx<bool> isObscureTextNewPassword = false.obs;
  Rx<bool> isObscureTextConfirmNewPassword = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
