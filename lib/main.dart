import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Config/Routes/AppRoute.dart';
import 'Utils/Theme/AppTheme.dart';

void main() {
  runApp(const DefiOptimized());
}

class DefiOptimized extends StatelessWidget {
  const DefiOptimized({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoute.pages,
      initialRoute: "/",
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
