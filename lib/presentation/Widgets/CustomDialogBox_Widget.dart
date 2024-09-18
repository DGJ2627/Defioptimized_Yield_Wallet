import 'package:flutter/material.dart';

import '../../Utils/Helper/Helper.dart';
import '../../Utils/constants/ImagePath/ImagePath.dart';
import 'CustomButton_Widget.dart';

class CustomDialogBox extends StatelessWidget {
  const CustomDialogBox(
      {super.key,
      required this.dialogTitle,
      required this.dialogSubTitle,
      required this.btnText,
      this.btnOnTap});

  final String dialogTitle;
  final String dialogSubTitle;
  final String btnText;
  final void Function()? btnOnTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final Hight = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    return Container(
      height: Hight * 0.4,
      width: Width * 0.8,
      decoration: BoxDecoration(
          color: dark ? Colors.white : const Color(0xff1E1F23),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: Hight * 0.2,
            width: Width * 0.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImagePath.imagePath.passwordChangeGIF,
                ),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              dialogTitle,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          SizedBox(
            height: Hight * 0.020,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.center,
              child: Text(dialogSubTitle,
                  style: Theme.of(context).textTheme.displaySmall),
            ),
          ),
          SizedBox(
            height: Hight * 0.020,
          ),
          CustomButtonWidget(
            height: Hight * 0.06,
            width: Width * 0.6,
            text: btnText,
            onTap: btnOnTap,
          ),
        ],
      ),
    );
  }
}
