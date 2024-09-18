import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../Utils/Helper/Helper.dart';

class AddInvestmentPackageWidget extends StatelessWidget {
  const AddInvestmentPackageWidget({
    super.key,
    required this.packageNumber,
    required this.totalPrice,
    required this.totalInvestment,
    required this.totalInvestor,
    required this.totalReturnOnYearly,
    this.onTap,
    required this.gradientLight,
    required this.gradientDark,
  });

  final String packageNumber;
  final String totalPrice;
  final String totalInvestment;
  final String totalInvestor;
  final String totalReturnOnYearly;
  final void Function()? onTap;
  final List<Color> gradientLight;
  final List<Color> gradientDark;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 177,
        width: 335,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: dark ? gradientLight : gradientDark,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: Column(
            children: [
              //package name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "#${packageNumber}Package",
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 1),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Row(
                      children: [
                        Text(
                          "Invest Now",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Iconsax.arrow_right_25,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(10),
              const Divider(
                color: Colors.white,
                height: 1,
              ),
              const Gap(14),
              //price and investment
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffE4DFDF),
                            letterSpacing: 1),
                      ),
                      Text(
                        "\$ $totalPrice",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Investment",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffE4DFDF),
                        ),
                      ),
                      Text(
                        "\$ $totalInvestment",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(10),
              //total investor and return on year
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Investor",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffE4DFDF),
                            letterSpacing: 1),
                      ),
                      Text(
                        "\$ $totalInvestor+",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Return on Yearly",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffE4DFDF),
                        ),
                      ),
                      Text(
                        "($totalReturnOnYearly%)",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
