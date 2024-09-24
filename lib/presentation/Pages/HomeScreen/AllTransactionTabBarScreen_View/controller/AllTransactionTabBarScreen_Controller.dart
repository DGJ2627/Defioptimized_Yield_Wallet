import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../AllTransactionScreens/AllTransactionScreens.dart';
import '../DepositScreen/DepositScreen_View.dart';
import '../ReturnOnInvestmentScreen/ReturnOnInvestmentScreen_View.dart';
import '../WithdrawTransactionScreen/WithdrawTransactionScreen_View.dart';

class AllTransactionTabBarScreenController extends GetxController {
  static AllTransactionTabBarScreenController get instance => Get.find();
  late TabController tabController;
  Rx<int> selectedIndex = 3.obs;

  List<String> tabNames = [
    "Deposit",
    "Withdraw",
    "Return on Investment",
    "All",
  ];

  List<Widget> tabScreens = const <Widget>[
    DepositScreenView(),
    WithdrawTransactionScreenView(),
    ReturnOnInvestmentScreen(),
    AllTransactionScreens(),
  ];
}
