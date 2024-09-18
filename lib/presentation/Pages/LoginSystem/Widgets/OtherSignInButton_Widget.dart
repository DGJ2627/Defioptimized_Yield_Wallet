import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Utils/Helper/Helper.dart';

class OtherSignInButtonWidget extends StatelessWidget {
  const OtherSignInButtonWidget(
      {super.key, required this.imageIcon, required this.iconName, this.onTap});

  final String imageIcon;
  final String iconName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    final isdark = HelperFunction.isDarkMode(context);
    return Align(
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        height: Height * 0.07,
        width: Width * 0.7,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              color: isdark
                  ? const Color(0xffE4DFDF)
                  : const Color(0xffD9D9D9).withOpacity(0.4)),
          color: isdark
              ? const Color(0xffFFFFFF)
              : const Color(0x0fffffff).withOpacity(0.2),
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imageIcon,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                iconName,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
