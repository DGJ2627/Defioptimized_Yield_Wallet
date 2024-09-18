import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Controller/KeyBoardController.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../Utils/Helper/Helper.dart';
import 'KeyBoardBtn_Widget.dart';

class NumericKeypadWidget extends StatefulWidget {
  const NumericKeypadWidget({
    super.key,
  });

  @override
  State<NumericKeypadWidget> createState() => _NumericKeypadWidgetState();
}

class _NumericKeypadWidgetState extends State<NumericKeypadWidget> {
  @override
  Widget build(BuildContext context) {
    final Width = HelperFunction.screenWidth(context);
    final Height = HelperFunction.screenHeight(context);
    final dark = HelperFunction.isDarkMode(context);
    final controller = Get.put(KeyBoardController());
    String enterPin = "";

    Widget numButton(int number) {
      return TextButton(
        onPressed: () {
          setState(() {
            if (enterPin.length < 4) {
              enterPin = number.toString();
            }
          });
        },
        child: KeyBoardBtn(number: enterPin),
      );
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Expanded(
          //   flex: 2,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: List.generate(
          //       4,
          //       (index) {
          //         return Container(
          //           alignment: Alignment.center,
          //           height: Height * 0.06,
          //           width: Width * 0.12,
          //           margin: const EdgeInsets.symmetric(horizontal: 10),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(10),
          //             color: dark
          //                 ? const Color(0xffb3b3b3).withOpacity(0.1)
          //                 : const Color(0xffFFFFFF).withOpacity(0.2),
          //             border: Border.all(
          //               color: dark ? const Color(0xffE4DFDF) : Colors.white,
          //             ),
          //           ),
          //           child: TextFormField(
          //             controller: controller.pinCode,
          //             decoration: const InputDecoration(
          //                 border:
          //                     OutlineInputBorder(borderSide: BorderSide.none)),
          //           ),
          //         );
          //       },
          //     ),
          //   ),
          // ),
          const Gap(20),
          // for (var i = 0; i < 3; i++)
          //   Expanded(
          //     flex: 2,
          //     child: Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 10),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: List.generate(
          //           3,
          //           (index) => controller.numButton(1 + 3 * i + index),
          //         ).toList(),
          //       ),
          //     ),
          //   ),

          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 1 2 3
                KeyBoardBtn(
                  number: "1",
                  onTap: () {
                    // numButton(1);
                  },
                ),
                KeyBoardBtn(
                  number: "2",
                  onTap: () {
                    // numButton(2);
                  },
                ),
                KeyBoardBtn(
                  number: "3",
                  onTap: () {
                    // numButton(3);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 4 5 6
                KeyBoardBtn(
                  number: "4",
                  onTap: () {},
                ),
                KeyBoardBtn(
                  number: "5",
                  onTap: () {},
                ),
                KeyBoardBtn(
                  number: "6",
                  onTap: () {},
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 7 8 9
                KeyBoardBtn(
                  number: "7",
                  onTap: () {},
                ),
                KeyBoardBtn(
                  number: "8",
                  onTap: () {},
                ),
                KeyBoardBtn(
                  number: "9",
                  onTap: () {},
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 7 8 9
                SizedBox(width: Width * 0.2),
                KeyBoardBtn(
                  number: "0",
                  onTap: () {},
                ),
                Container(
                  alignment: Alignment.center,
                  height: Height * 0.2,
                  width: Width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // color: dark
                    //     ? const Color(0xffb3b3b3)
                    //     : const Color(0xffFFFFF).withOpacity(0.2),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.backspace_outlined,
                      color: dark ? Colors.black : Colors.white,
                      size: Height * 0.04,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
