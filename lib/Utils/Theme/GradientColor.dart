
import 'package:flutter/material.dart';

class GradientColor {
  GradientColor._();

  static final GradientColor gradientColor = GradientColor._();

  List<Color> lightGradientColor = [
    const Color(0xffCBB4D4),
    const Color(0xff20002C),
  ];
  List<Color> darkGradientColor = [
    const Color(0xff3B82F6),
    const Color(0xff3B82F6),
  ];

  final List<Color> gradientPackage1LightColor = [
    const Color(0xff379FFE),
    const Color(0xff555DFD),
  ];

  final List<Color> gradientPackage1DarkColor = [
    const Color(0xff44A08D),
    const Color(0xff093637),
  ];

  final List<Color> gradientPackage2LightColor = [
    const Color(0xff4E54C8),
    const Color(0xff8F94FB),
  ];

  final List<Color> gradientPackage2DarkColor = [
    const Color(0xff159957),
    const Color(0xff06472B),
  ];

  final List<Color> gradientPackage3LightColor = [
    const Color(0xff4A00E0),
    const Color(0xff8E2DE2),
  ];

  final List<Color> gradientPackage3DarkColor = [
    const Color(0xff67B26F),
    const Color(0xff4CA2CD),
  ];

  List<Color> nullGradientColor = [
    Colors.transparent,
    Colors.transparent,
  ];
}
