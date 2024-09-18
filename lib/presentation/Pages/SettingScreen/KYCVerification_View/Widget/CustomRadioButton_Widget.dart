import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../Utils/Helper/Helper.dart';
import '../../../../../Utils/Theme/GradientColor.dart';

class CustomRadioButtonWidget extends StatelessWidget {
  const CustomRadioButtonWidget({
    super.key,
    required this.radioButtonName,
    this.onTap,
    required this.isChangeValue,
  });

  final void Function()? onTap;
  final bool isChangeValue;
  final String radioButtonName;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    // final radioController = Get.put(CustomRadioButtonController());
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            alignment: AlignmentDirectional.center,
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: isChangeValue
                  ? Border.all(color: Colors.grey, width: 1)
                  : const Border(
                      left: BorderSide.none,
                      bottom: BorderSide.none,
                      top: BorderSide.none,
                      right: BorderSide.none,
                    ),
              gradient: LinearGradient(
                colors: isChangeValue
                    ? [
                        Colors.transparent,
                        Colors.transparent,
                      ]
                    : GradientColor.gradientColor.gradientPackage1LightColor,
              ),
            ),
            child: isChangeValue
                ? const Icon(
                    Icons.add,
                    size: 0,
                  )
                : const Icon(
                    Icons.check,
                    size: 10,
                    color: Colors.white,
                  ),
          ),
          const Gap(10),
          Text(
            radioButtonName,
            style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                color: dark ? Colors.black : Colors.white,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
