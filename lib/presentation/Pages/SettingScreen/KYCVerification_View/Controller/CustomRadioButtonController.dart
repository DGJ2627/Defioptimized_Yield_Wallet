import 'package:get/get.dart';

class CustomRadioButtonController extends GetxController {
  CustomRadioButtonController get instance => Get.find();

  Rx<bool> isIdCardSelected = false.obs;
  Rx<bool> isPassportSelected = true.obs;
  Rx<bool> isDrivingLicenseSelected = true.obs;

  void changeIdCardValue() {
    isIdCardSelected.value = false;
    isPassportSelected.value = true;
    isDrivingLicenseSelected.value = true;
  }

  void changePassportValue() {
    isIdCardSelected.value = true;
    isPassportSelected.value = false;
    isDrivingLicenseSelected.value = true;
  }

  void changeDrivingLicenseValue() {
    isIdCardSelected.value = true;
    isPassportSelected.value = true;
    isDrivingLicenseSelected.value = false;
  }
}
