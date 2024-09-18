import 'package:flutter/material.dart';
import 'package:defioptimized_yield/Utils/Theme/TextTheme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xffFFFFFF),
    primaryColorLight: const Color(0xffFFFFFF),
    useMaterial3: true,
    textTheme: AppTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xff020817),
    primaryColorDark: const Color(0xff020817),
    useMaterial3: true,
    textTheme: AppTextTheme.darkTextTheme,
  );
}
