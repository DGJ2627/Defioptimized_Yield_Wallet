import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/Theme/GradientColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/CheckBoxController.dart';

class CustomCheckBoxWidget extends StatelessWidget {
  const CustomCheckBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final CheckboxController controller = Get.put(CheckboxController());
    final dark = HelperFunction.isDarkMode(context);
    return Obx(
      () => GestureDetector(
        onTap: controller.toggleCheckbox,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: dark
                  ? GradientColor.gradientColor.lightGradientColor
                  : GradientColor.gradientColor
                      .gradientPackage1LightColor, // Customize gradient
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          child: controller.isChecked.value
              ? const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 14,
                )
              : null,
        ),
      ),
    );
  }
}
