import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Pages/BottomNavigationScreen/BottomNavigationScreen_VIew.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionDetailsScreenView extends StatelessWidget {
  const TransactionDetailsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark ? Colors.white : const Color(0xff020817),
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          "Transaction Details",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.keyboard_backspace_rounded,
              color: dark ? Colors.black : Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(dark
                    ? ImagePath.imagePath.transactionDetailsSvgImage
                    : ImagePath.imagePath.transactionDetailsSvgDarkImage),
              ),
            ),
            const Gap(10),
            Text(
              "\$ 658.00",
              style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: const Color(0xff00BF71)),
            ),
            const Gap(10),
            Text(
              "Balance Deposit",
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: dark ? Colors.black : Colors.white,
              ),
            ),
            const Gap(10),
            Container(
              height: 215,
              width: 315,
              decoration: BoxDecoration(
                color: dark
                    ? const Color(0xffF8F8F8)
                    : Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transaction ID",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: dark
                                ? const Color(0xff838284)
                                : const Color(0xff777B95),
                          ),
                        ),
                        Text(
                          "#251254354235",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: dark ? Colors.black : Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Gap(10),
                    Divider(
                      height: 1,
                      color: dark
                          ? const Color(0xff838284)
                          : const Color(0xff777B95),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "To",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: dark
                                ? const Color(0xff838284)
                                : const Color(0xff777B95),
                          ),
                        ),
                        Text(
                          "DEFI OPTIMIZED YIELD \n(DOY)",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: dark ? Colors.black : Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Gap(10),
                    const Divider(
                      height: 1,
                      color: Color(0xff777B95),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Date & Time",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: dark
                                ? const Color(0xff838284)
                                : const Color(0xff777B95),
                          ),
                        ),
                        Text(
                          "26 Aug 01:03 PM",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: dark ? Colors.black : Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Gap(10),
                    Divider(
                      height: 1,
                      color: dark
                          ? const Color(0xff838284)
                          : const Color(0xff777B95),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Status",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: dark
                                ? const Color(0xff838284)
                                : const Color(0xff777B95),
                          ),
                        ),
                        Text(
                          "Completed",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: const Color(0xff00BF71),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Gap(200),
            CustomButtonWidget(
              height: 56,
              width: 335,
              text: 'Download',
              onTap: () => Get.offAll(const BottomNavigationScreen()),
            )
          ],
        ),
      ),
    );
  }
}
