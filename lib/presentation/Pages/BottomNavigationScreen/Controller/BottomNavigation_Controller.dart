import 'package:defioptimized_yield/presentation/Pages/HomeScreen/HomeScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/ROIScreen/ROIScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/SettingScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/WithdrawScreen/WithdrawScreen_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const ROIScreen(),
    const WithdrawScreen(),
    const SettingScreen(),
  ];

  List<String> iconNames = [
    "Home",
    "ROI",
    "Withdraw",
    "Setting",
  ];

  List<IconData> icons = [
    Iconsax.home,
    Iconsax.money_recive,
    Iconsax.wallet_1,
    Iconsax.setting
  ];

  List<IconData> selectedIcons = [
    Iconsax.home_15,
    Iconsax.money_recive5,
    Iconsax.wallet5,
    Iconsax.setting5
  ];
}
