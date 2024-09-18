import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';

class LoginController extends GetxController {
  LoginController get instance => Get.find();

  //login controller
  final emailController = TextEditingController();
  final userFirstNameController = TextEditingController();
  final userLastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmSignUpController = TextEditingController();
  final forgotEmailController = TextEditingController();

  //otp controller
  final otpCodeController = OtpFieldController();

  //set password
  final setPasswordController = OtpFieldController();

  //crate new password controller
  final createNewPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
}
