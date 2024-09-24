import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/presentation/Pages/HomeScreen/AllTransactionTabBarScreen_View/TransactionDetailsScreen_View/TransactionDetailsScreen_View.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../Utils/constants/ImagePath/ImagePath.dart';
import '../../Widgets/TransactionHistoryWidget.dart';

class AllTransactionScreens extends StatefulWidget {
  const AllTransactionScreens({super.key});

  @override
  State<AllTransactionScreens> createState() => _AllTransactionScreensState();
}

class _AllTransactionScreensState extends State<AllTransactionScreens>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(30),
              TransactionHistoryWidget(
                onTap: () {
                  Get.to(() => () => const TransactionDetailsScreenView());
                },
                // isNotShow: false,
                // inNotStatus: true,
                image: ImagePath.imagePath.returnOnHistoryIcon,
                title: "Balance Deposit",
                transactionTime: "15 May 2020 8:00 am",
                profit: "\$ 658",
                totalBalance: "Balance : 785.00",
                backgroundLight: const Color(0xffEDF4E1),
                backgroundDark: Colors.white.withOpacity(0.1),
                profitTextColor: dark ? const Color(0xff00BF71) : Colors.white,
                totalBalanceTextColor: const Color(0xff838284),
              ),
              const SizedBox(
                height: 10,
              ),
              TransactionHistoryWidget(
                onTap: () {
                  Get.to(() => () => const TransactionDetailsScreenView());
                },
                // isNotShow: true,
                // inNotStatus: false,
                image: ImagePath.imagePath.withdrawPendingIcon,
                title: "Withdraw",
                subTitle: "********2623",
                transactionTime: "15 May 2020 8:00 am",
                profit: "\$ 658",
                totalBalance: "Pending",
                backgroundLight: const Color(0xffFFF7E6),
                backgroundDark: Colors.white.withOpacity(0.1),
                profitTextColor: dark ? const Color(0xff838284) : Colors.white,
                totalBalanceTextColor: const Color(0xffFEAD05),
              ),
              const SizedBox(
                height: 10,
              ),
              TransactionHistoryWidget(
                onTap: () {
                  Get.to(() => () => const TransactionDetailsScreenView());
                },
                // isNotShow: true,
                // inNotStatus: false,
                image: ImagePath.imagePath.withdrawFailedIcon,
                title: "Withdraw",
                subTitle: "********2623",
                transactionTime: "15 May 2020 8:00 am",
                profit: "\$ 658",
                totalBalance: "Failed",
                backgroundLight: const Color(0xffFFE8E0),
                backgroundDark: Colors.white.withOpacity(0.1),
                profitTextColor: dark ? const Color(0xff838284) : Colors.white,
                totalBalanceTextColor: const Color(0xffFF3B30),
              ),
              const SizedBox(
                height: 10,
              ),
              TransactionHistoryWidget(
                onTap: () {
                  Get.to(() => () => const TransactionDetailsScreenView());
                },
                // isNotShow: true,
                // inNotStatus: false,
                image: ImagePath.imagePath.withdrawSuccessfullyIcon,
                title: "Withdraw",
                subTitle: "********2623",
                transactionTime: "15 May 2020 8:00 am",
                profit: "\$ 658",
                totalBalance: "Successful",
                backgroundLight: const Color(0xffEDF4E1),
                backgroundDark: Colors.white.withOpacity(0.1),
                profitTextColor: dark ? const Color(0xff838284) : Colors.white,
                totalBalanceTextColor: const Color(0xff00BF71),
              ),
              const SizedBox(
                height: 10,
              ),
              TransactionHistoryWidget(
                onTap: () {
                  Get.to(() => () => const TransactionDetailsScreenView());
                },
                // isNotShow: false,
                // inNotStatus: true,
                image: ImagePath.imagePath.returnOnHistoryIcon,
                title: "Balance Deposit",
                transactionTime: "15 May 2020 8:00 am",
                profit: "\$ 658",
                totalBalance: "Balance : 785.00",
                backgroundLight: const Color(0xffFFE8E0),
                backgroundDark: Colors.white.withOpacity(0.1),
                profitTextColor: dark ? const Color(0xff838284) : Colors.white,
                totalBalanceTextColor: const Color(0xffFF3B30),
              ),
              const SizedBox(
                height: 10,
              ),
              TransactionHistoryWidget(
                onTap: () {
                  Get.to(() => () => const TransactionDetailsScreenView());
                },
                // isNotShow: false,
                // inNotStatus: true,
                image: ImagePath.imagePath.returnOnHistoryIcon,
                title: "Balance Deposit",
                transactionTime: "15 May 2020 8:00 am",
                profit: "\$ 658",
                totalBalance: "Balance : 785.00",
                backgroundLight: const Color(0xffEDF4E1),
                backgroundDark: Colors.white.withOpacity(0.1),
                profitTextColor: dark ? const Color(0xff00BF71) : Colors.white,
                totalBalanceTextColor: const Color(0xff838284),
              ),
              const SizedBox(
                height: 10,
              ),
              TransactionHistoryWidget(
                onTap: () {
                  Get.to(() => () => const TransactionDetailsScreenView());
                },
                // isNotShow: true,
                // inNotStatus: false,
                image: ImagePath.imagePath.withdrawPendingIcon,
                title: "Withdraw",
                subTitle: "********2623",
                transactionTime: "15 May 2020 8:00 am",
                profit: "\$ 658",
                totalBalance: "Pending",
                backgroundLight: const Color(0xffFFF7E6),
                backgroundDark: Colors.white.withOpacity(0.1),
                profitTextColor: dark ? const Color(0xff838284) : Colors.white,
                totalBalanceTextColor: const Color(0xffFEAD05),
              ),
              const SizedBox(
                height: 10,
              ),
              TransactionHistoryWidget(
                onTap: () {
                  Get.to(() => () => const TransactionDetailsScreenView());
                },
                // isNotShow: true,
                // inNotStatus: false,
                image: ImagePath.imagePath.withdrawFailedIcon,
                title: "Withdraw",
                subTitle: "********2623",
                transactionTime: "15 May 2020 8:00 am",
                profit: "\$ 658",
                totalBalance: "Failed",
                backgroundLight: const Color(0xffFFE8E0),
                backgroundDark: Colors.white.withOpacity(0.1),
                profitTextColor: dark ? const Color(0xff838284) : Colors.white,
                totalBalanceTextColor: const Color(0xffFF3B30),
              ),
              const SizedBox(
                height: 10,
              ),
              TransactionHistoryWidget(
                onTap: () {
                  Get.to(() => () => const TransactionDetailsScreenView());
                },
                // isNotShow: true,
                // inNotStatus: false,
                image: ImagePath.imagePath.withdrawSuccessfullyIcon,
                title: "Withdraw",
                subTitle: "********2623",
                transactionTime: "15 May 2020 8:00 am",
                profit: "\$ 658",
                totalBalance: "Successful",
                backgroundLight: const Color(0xffEDF4E1),
                backgroundDark: Colors.white.withOpacity(0.1),
                profitTextColor: dark ? const Color(0xff838284) : Colors.white,
                totalBalanceTextColor: const Color(0xff00BF71),
              ),
              const SizedBox(
                height: 10,
              ),
              TransactionHistoryWidget(
                onTap: () {
                  Get.to(() => () => const TransactionDetailsScreenView());
                },
                // isNotShow: false,
                // inNotStatus: true,
                image: ImagePath.imagePath.returnOnHistoryIcon,
                title: "Balance Deposit",
                transactionTime: "15 May 2020 8:00 am",
                profit: "\$ 658",
                totalBalance: "Balance : 785.00",
                backgroundLight: const Color(0xffFFE8E0),
                backgroundDark: Colors.white.withOpacity(0.1),
                profitTextColor: dark ? const Color(0xff838284) : Colors.white,
                totalBalanceTextColor: const Color(0xffFF3B30),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
