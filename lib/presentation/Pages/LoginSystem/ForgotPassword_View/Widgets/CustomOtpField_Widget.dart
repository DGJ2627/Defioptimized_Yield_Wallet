import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../../../../Utils/Helper/Helper.dart';

class CustomOtpField extends StatelessWidget {
  const CustomOtpField({
    super.key,
    required this.controller,
  });

  final OtpFieldController controller;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return OTPTextField(
        controller: controller,
        length: 4,
        otpFieldStyle: OtpFieldStyle(
          backgroundColor:
              dark ? Colors.white : const Color(0x0fffffff).withOpacity(0.2),
          borderColor: dark
              ? const Color(0xffE4DFDF)
              : const Color(0x0fffffff).withOpacity(0.2),
          enabledBorderColor: dark
              ? const Color(0xffE4DFDF)
              : const Color(0x0fffffff).withOpacity(0.2),
        ),
        width: MediaQuery.of(context).size.width,
        textFieldAlignment: MainAxisAlignment.spaceAround,
        fieldWidth: 45,
        fieldStyle: FieldStyle.box,
        outlineBorderRadius: 15,
        style: Theme.of(context).textTheme.displaySmall!,
        onChanged: (pin) {
          print("Changed: $pin");
        },
        onCompleted: (pin) {
          print("Completed: $pin");
        });
  }
}
