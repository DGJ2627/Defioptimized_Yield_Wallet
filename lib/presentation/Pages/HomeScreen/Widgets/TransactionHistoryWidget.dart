import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import '../../../../Utils/Helper/Helper.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({
    super.key,
    required this.title,
    this.subTitle,
    required this.profit,
    required this.totalBalance,
    required this.image,
    required this.transactionTime,
    required this.backgroundLight,
    required this.backgroundDark,
    required this.profitTextColor,
    required this.totalBalanceTextColor,
    required this.isNotShow,
    required this.inNotStatus,
    this.onTap,
  });

  final String title;
  final String? subTitle;
  final String transactionTime;
  final String profit;
  final String totalBalance;
  final String image;
  final Color backgroundLight;
  final Color backgroundDark;
  final Color profitTextColor;
  final Color totalBalanceTextColor;
  final bool isNotShow;
  final bool inNotStatus;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Height * 0.099,
        width: Width * 0.9,
        decoration: BoxDecoration(
            border: Border.all(
              color: dark ? Colors.transparent : Colors.white.withOpacity(0.4),
            ),
            color: dark ? backgroundLight : backgroundDark,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  height: Height * 0.16,
                  width: Width * 0.16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: dark ? Colors.white : Colors.white.withOpacity(0.1),
                  ),
                  child: SvgPicture.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          color: dark ? Colors.black : Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    if (isNotShow)
                      Text(
                        subTitle!,
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            color: dark ? Colors.black : Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    Text(
                      transactionTime,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: dark
                            ? const Color(0xff838284)
                            : const Color(0xff777B95),
                      ),
                    ),
                  ],
                ),
              ),
              if (inNotStatus)
                const SizedBox(
                  width: 30,
                ),
              if (!inNotStatus)
                const SizedBox(
                  width: 50,
                ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      profit,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          color: profitTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      totalBalance,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: totalBalanceTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
