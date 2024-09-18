import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Utils/Helper/Helper.dart';

class ROIPackageContainerWidget extends StatelessWidget {
  const ROIPackageContainerWidget({
    super.key,
    required this.tital,
    required this.subTitel,
  });

  final String tital;
  final String subTitel;
  @override
  Widget build(BuildContext context) {
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    return Container(
      height: Height * 0.09,
      width: Width * 0.42,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tital,
              style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color(0xffE4DFDF)),
            ),
            const Gap(10),
            Text(
              subTitel,
              style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: const Color(0xffFFFFFF)),
            ),
          ],
        ),
      ),
    );
  }
}
