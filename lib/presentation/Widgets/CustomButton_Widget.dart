import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    this.onTap,
  });

  final double height;
  final double width;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final List<Color> gradientLightColor = [
      const Color(0xff20002C),
      const Color(0xff492C54),
    ];

    final List<Color> gradientDarkColor = [
      const Color(0xff3B82F6),
      const Color(0xff3B82F6),
    ];
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: dark ? gradientLightColor : gradientDarkColor,
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}
