import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/presentation/Pages/HomeScreen/AllTransactionTabBarScreen_View/AllTransactionTabBarScreenView.dart';
import 'package:defioptimized_yield/presentation/Pages/HomeScreen/Widgets/TransactionHistoryWidget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../Utils/constants/ImagePath/ImagePath.dart';
import 'Widgets/HomeScreenUserTopSide_Widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final Height = HelperFunction.screenHeight(context);

    return Scaffold(
      backgroundColor: dark ? Colors.grey.shade200 : Colors.transparent,
      body: Column(
        children: [
          const HomeScreenUserTopSideWidget(),
          const Gap(40),
          Container(
            height: Height * 0.533,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: Radius.circular(40)),
              color: dark ? Colors.white : Colors.white10.withOpacity(0.1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(20),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transaction History",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(
                                () => const AllTransactionTabBarScreenView());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "View All",
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Iconsax.arrow_right_25,
                                color: dark ? Colors.black : Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: [
                          const Gap(10),
                          TransactionHistoryWidget(
                            image: ImagePath.imagePath.returnOnHistoryIcon,
                            title: "Balance Deposit",
                            transactionTime: "15 May 2020 8:00 am",
                            profit: "\$ 658",
                            totalBalance: "Balance : 785.00",
                            backgroundLight: const Color(0xffEDF4E1),
                            backgroundDark: Colors.white.withOpacity(0.1),
                            profitTextColor:
                                dark ? const Color(0xff00BF71) : Colors.white,
                            totalBalanceTextColor: const Color(0xff838284),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TransactionHistoryWidget(
                            image: ImagePath.imagePath.withdrawPendingIcon,
                            title: "Withdraw",
                            subTitle: "********2623",
                            transactionTime: "15 May 2020 8:00 am",
                            profit: "\$ 658",
                            totalBalance: "Pending",
                            backgroundLight: const Color(0xffFFF7E6),
                            backgroundDark: Colors.white.withOpacity(0.1),
                            profitTextColor:
                                dark ? const Color(0xff838284) : Colors.white,
                            totalBalanceTextColor: const Color(0xffFEAD05),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TransactionHistoryWidget(
                            image: ImagePath.imagePath.withdrawFailedIcon,
                            title: "Withdraw",
                            subTitle: "********2623",
                            transactionTime: "15 May 2020 8:00 am",
                            profit: "\$ 658",
                            totalBalance: "Failed",
                            backgroundLight: const Color(0xffFFE8E0),
                            backgroundDark: Colors.white.withOpacity(0.1),
                            profitTextColor:
                                dark ? const Color(0xff838284) : Colors.white,
                            totalBalanceTextColor: const Color(0xffFF3B30),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TransactionHistoryWidget(
                            image: ImagePath.imagePath.withdrawSuccessfullyIcon,
                            title: "Withdraw",
                            subTitle: "********2623",
                            transactionTime: "15 May 2020 8:00 am",
                            profit: "\$ 658",
                            totalBalance: "Successful",
                            backgroundLight: const Color(0xffEDF4E1),
                            backgroundDark: Colors.white.withOpacity(0.1),
                            profitTextColor:
                                dark ? const Color(0xff838284) : Colors.white,
                            totalBalanceTextColor: const Color(0xff00BF71),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TransactionHistoryWidget(
                            image: ImagePath.imagePath.returnOnHistoryIcon,
                            title: "Balance Deposit",
                            transactionTime: "15 May 2020 8:00 am",
                            profit: "\$ 658",
                            totalBalance: "Balance : 785.00",
                            backgroundLight: const Color(0xffFFE8E0),
                            backgroundDark: Colors.white.withOpacity(0.1),
                            profitTextColor:
                                dark ? const Color(0xff838284) : Colors.white,
                            totalBalanceTextColor: const Color(0xffFF3B30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
Container(
            height: Height * 0.53,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: Radius.circular(40)),
              color: dark ? Colors.white : Colors.white10.withOpacity(0.1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: SizedBox(
                height: 60,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //view  all data
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transaction History",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(
                                  () => const AllTransactionTabBarScreenView());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "View All",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Iconsax.arrow_right_25,
                                  color: dark ? Colors.black : Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                      TransactionHistoryWidget(
                        image: ImagePath.imagePath.returnOnHistoryIcon,
                        title: "Balance Deposit",
                        transactionTime: "15 May 2020 8:00 am",
                        profit: "\$ 658",
                        totalBalance: "Balance : 785.00",
                        backgroundLight: const Color(0xffEDF4E1),
                        backgroundDark: Colors.white.withOpacity(0.1),
                        profitTextColor:
                            dark ? const Color(0xff00BF71) : Colors.white,
                        totalBalanceTextColor: const Color(0xff838284),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TransactionHistoryWidget(
                        image: ImagePath.imagePath.withdrawPendingIcon,
                        title: "Withdraw",
                        subTitle: "********2623",
                        transactionTime: "15 May 2020 8:00 am",
                        profit: "\$ 658",
                        totalBalance: "Pending",
                        backgroundLight: const Color(0xffFFF7E6),
                        backgroundDark: Colors.white.withOpacity(0.1),
                        profitTextColor:
                            dark ? const Color(0xff838284) : Colors.white,
                        totalBalanceTextColor: const Color(0xffFEAD05),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TransactionHistoryWidget(
                        image: ImagePath.imagePath.withdrawFailedIcon,
                        title: "Withdraw",
                        subTitle: "********2623",
                        transactionTime: "15 May 2020 8:00 am",
                        profit: "\$ 658",
                        totalBalance: "Failed",
                        backgroundLight: const Color(0xffFFE8E0),
                        backgroundDark: Colors.white.withOpacity(0.1),
                        profitTextColor:
                            dark ? const Color(0xff838284) : Colors.white,
                        totalBalanceTextColor: const Color(0xffFF3B30),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TransactionHistoryWidget(
                        image: ImagePath.imagePath.withdrawSuccessfullyIcon,
                        title: "Withdraw",
                        subTitle: "********2623",
                        transactionTime: "15 May 2020 8:00 am",
                        profit: "\$ 658",
                        totalBalance: "Successful",
                        backgroundLight: const Color(0xffEDF4E1),
                        backgroundDark: Colors.white.withOpacity(0.1),
                        profitTextColor:
                            dark ? const Color(0xff838284) : Colors.white,
                        totalBalanceTextColor: const Color(0xff00BF71),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TransactionHistoryWidget(
                        image: ImagePath.imagePath.returnOnHistoryIcon,
                        title: "Balance Deposit",
                        transactionTime: "15 May 2020 8:00 am",
                        profit: "\$ 658",
                        totalBalance: "Balance : 785.00",
                        backgroundLight: const Color(0xffFFE8E0),
                        backgroundDark: Colors.white.withOpacity(0.1),
                        profitTextColor:
                            dark ? const Color(0xff838284) : Colors.white,
                        totalBalanceTextColor: const Color(0xffFF3B30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
 */
