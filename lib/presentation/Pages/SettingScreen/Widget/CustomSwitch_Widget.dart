// import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
// import 'package:defioptimized_yield/presentation/Pages/SettingScreen/Controller/Switch_Controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class CustomSwitch extends StatelessWidget {
//   CustomSwitch({super.key, this.onTap, required this.switchValue});
//
//   final controller = Get.put(CustomSwitchController());
//
//   final void Function()? onTap;
//   final bool switchValue;
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = HelperFunction.isDarkMode(context);
//     return Obx(
//       () => GestureDetector(
//         onTap: onTap,
//         child: Padding(
//           padding: const EdgeInsets.only(right: 10),
//           child: AnimatedContainer(
//             duration: const Duration(milliseconds: 200),
//             width: 34,
//             height: 20,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(50),
//               color: dark
//                   ? const Color(0xff131212).withOpacity(0.14)
//                   : const Color(0xff838284),
//             ),
//             child: Stack(
//               children: [
//                 AnimatedPositioned(
//                   duration: const Duration(milliseconds: 200),
//                   left: controller.isSwitched.value ? 20 : 4,
//                   top: 2,
//                   child: Container(
//                     width: 16,
//                     height: 16,
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       gradient: LinearGradient(
//                         colors: [
//                           Color(0xff379FFE),
//                           Color(0xff555DFD),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../../../Utils/Helper/Helper.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch(
      {super.key,
      this.onTap,
      required this.switchValue,
      required this.switchDotLightColor,
      required this.switchDotDarkColor,
      required this.switchBackGroundColor});

  final void Function()? onTap;
  final bool switchValue;
  final List<Color> switchDotLightColor;
  final List<Color> switchDotDarkColor;
  final Color switchBackGroundColor;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 34,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: switchBackGroundColor,
          ),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                left: switchValue ? 20 : 4,
                top: 2,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors:
                            dark ? switchDotLightColor : switchDotDarkColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
