import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../DepositScreen/DepositScreen_View.dart';
import '../../ReturnOnInvestmentScreen/ReturnOnInvestmentScreen_View.dart';
import '../../WithdrawTransactionScreen/WithdrawTransactionScreen_View.dart';
import '../AllTransactionScreens.dart';

class TabBarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<int> currentIndex = 3.obs;
  late TabController tabController;

  final screen = const [
    DepositScreenView(),
    WithdrawTransactionScreenView(),
    ReturnOnInvestmentScreen(),
    AllTransactionScreens(),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(
      () {
        currentIndex.value = tabController.index;
      },
    );

    super.onInit();
  }
}
