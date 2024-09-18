
import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/presentation/Pages/WithdrawScreen/WithdrawAmount_View/WithdrawAmount_View.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../Utils/constants/ImagePath/ImagePath.dart';
import '../HomeScreen/Widgets/TransactionHistoryWidget.dart';

class WithdrawScreen extends StatelessWidget {
  const WithdrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 18, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 112,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      Color(0xff555DFD),
                      Color(0xff379FFE),
                    ],
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Stack(
                    children: [
                      Positioned(
                        top: -40,
                        left: -20,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(0.1),
                                Colors.white.withOpacity(0.1),
                              ],
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.transparent,
                                spreadRadius: 10,
                                blurRadius: 60,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -76,
                        right: -50,
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(0.1),
                                Colors.white.withOpacity(0.1),
                              ],
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.transparent,
                                spreadRadius: 10,
                                blurRadius: 60,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 26,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Wallet Balance",
                              style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            const Gap(10),
                            Text(
                              "\$265.00 ",
                              style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 32,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 10,
                        child: GestureDetector(
                          onTap: () => Get.to(const WithdrawAmountView()),
                          child: Container(
                            height: 36,
                            width: 118,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white.withOpacity(0.4),
                              ),
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Withdraw",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Iconsax.arrow_right5,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(30),
              //view all data
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction History",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.to(const AllTransactionTabBarScreenView());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "View All",
                          style: Theme.of(context).textTheme.displayMedium,
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
              const Gap(30),
              SizedBox(
                height: 490,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(20),
                      TransactionHistoryWidget(
                        isNotShow: false,
                        inNotStatus: true,
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
                        isNotShow: true,
                        inNotStatus: false,
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
                        isNotShow: true,
                        inNotStatus: false,
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
                        isNotShow: true,
                        inNotStatus: false,
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
                        isNotShow: false,
                        inNotStatus: true,
                        image: ImagePath.imagePath.withdrawFailedIcon,
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
                      const SizedBox(
                        height: 10,
                      ),
                      TransactionHistoryWidget(
                        isNotShow: true,
                        inNotStatus: false,
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
                        isNotShow: true,
                        inNotStatus: false,
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
                        isNotShow: true,
                        inNotStatus: false,
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
                        isNotShow: false,
                        inNotStatus: true,
                        image: ImagePath.imagePath.withdrawFailedIcon,
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
            ],
          ),
        ),
      ),
    );
  }
}
