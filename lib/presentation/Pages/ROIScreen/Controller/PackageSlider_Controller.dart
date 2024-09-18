import 'package:get/get.dart';

class PackageSliderController extends GetxController {
  PackageSliderController get instance => Get.find();
  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }
}
