import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
    final width = HelperFunction.screenWidth(context);
    final height = HelperFunction.screenHeight(context);
    final dark = HelperFunction.isDarkMode(context);
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
          const Gap(20),
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
                SizedBox(width: width * 0.2),
                KeyBoardBtn(
                  number: "0",
                  onTap: () {},
                ),
                Container(
                  alignment: Alignment.center,
                  height: height * 0.2,
                  width: width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.backspace_outlined,
                      color: dark ? Colors.black : Colors.white,
                      size: height * 0.04,
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
