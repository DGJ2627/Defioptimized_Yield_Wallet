import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  ChangePasswordController get instance => Get.find();

  final oldPasswordController = TextEditingController();
  final createNewPasswordController = TextEditingController();
  final confirmNewController = TextEditingController();
}
