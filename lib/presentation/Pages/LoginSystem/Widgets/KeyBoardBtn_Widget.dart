import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Utils/Helper/Helper.dart';

class KeyBoardBtn extends StatelessWidget {
  const KeyBoardBtn({super.key, required this.number, this.onTap});

  final String number;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final height = HelperFunction.screenHeight(context);
    final width = HelperFunction.screenWidth(context);
    final dark = HelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height * 0.2,
        width: width * 0.2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: dark
              ? const Color(0xffb3b3b3).withOpacity(0.1)
              : const Color(0xffFFFFFF).withOpacity(0.2),
        ),
        child: Text(
          number,
          style: dark
              ? GoogleFonts.plusJakartaSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff131212))
              : GoogleFonts.plusJakartaSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffFFFFFF)),
        ),
      ),
    );
  }
}
