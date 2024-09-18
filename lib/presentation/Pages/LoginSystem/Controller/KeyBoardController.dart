import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';

class KeyBoardController extends GetxController {
  KeyBoardController get instance => Get.find();

  final pinCode = TextEditingController();
  final setPasswordController = OtpFieldController();
}
