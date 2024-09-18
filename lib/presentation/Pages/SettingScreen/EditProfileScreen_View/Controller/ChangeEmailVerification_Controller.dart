import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';

class ChangeEmailVerificationController extends GetxController {
  ChangeEmailVerificationController get instance => Get.find();
  final otpCodeController = OtpFieldController();
}
