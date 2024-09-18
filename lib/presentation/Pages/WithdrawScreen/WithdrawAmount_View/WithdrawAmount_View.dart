import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/presentation/Pages/WithdrawScreen/WithdrawPasswordScreen_View/WithdrawPasswordScreen_View.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class WithdrawAmountView extends StatelessWidget {
  const WithdrawAmountView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.keyboard_backspace_rounded,
                        color: dark ? Colors.black : Colors.white,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Withdraw",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    Container(
                      width: 50,
                    ),
                  ],
                ),
                const Gap(30),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 12),
                //   child: Text(
                //     "Amount",
                //     style: GoogleFonts.plusJakartaSans(
                //         fontSize: 14,
                //         fontWeight: FontWeight.w600,
                //         color: dark ? Colors.black : Colors.white),
                //   ),
                // ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 118,
                    width: 335,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Amount",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: dark ? Colors.black : Colors.white,
                          ),
                        ),
                        const Gap(8),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 90,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: dark
                                  ? const Color(0xffEDF4E1)
                                  : Colors.white.withOpacity(0.10),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "\$ 500.00",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                  color: dark
                                      ? const Color(0xff507E02)
                                      : Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Our Fees",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: dark
                                    ? const Color(0xff838284)
                                    : const Color(0xff777B95),
                              ),
                            ),
                            Text(
                              "\$10.00",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: dark ? Colors.black : Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total amount you will receive",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: dark
                                    ? const Color(0xff838284)
                                    : const Color(0xff777B95),
                              ),
                            ),
                            Text(
                              "\$243.00",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff00BF71),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(450),
                Align(
                  alignment: Alignment.center,
                  child: CustomButtonWidget(
                    height: 56,
                    width: 335,
                    text: "Withdraw",
                    onTap: () => Get.to(const WithdrawPasswordScreenView()),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
