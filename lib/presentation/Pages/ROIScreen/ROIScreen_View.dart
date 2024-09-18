import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets/PackageSlider_Widget.dart';

class ROIScreen extends StatelessWidget {
  const ROIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Package slider
              const PackageSliderWidget(),
              const Gap(10),

              //Dots
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // for (var i = 0; i < 3; i++)
                    //   Container(
                    //     width: 10,
                    //     height: 10,
                    //     decoration: BoxDecoration(
                    //       shape: BoxShape.circle,
                    //       gradient: LinearGradient(colors: [
                    //         Colors.blue.shade400,
                    //         Colors.blue.shade900,
                    //       ]),
                    //     ),
                    //   ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [
                          Colors.blue.shade400,
                          Colors.blue.shade900,
                        ]),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffE4DFDF)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffE4DFDF)),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              Text(
                "Return on History",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: dark ? Colors.black : Colors.white),
              ),
              const Gap(10),
              Expanded(
                flex: 5,
                child: SizedBox(
                  height: 60,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: dark
                                      ? Colors.transparent
                                      : Colors.white.withOpacity(0.4),
                                ),
                                color: dark
                                    ? const Color(0xffF8F8F8)
                                    : Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //image
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: dark
                                        ? Colors.white
                                        : Colors.white.withOpacity(0.1),
                                  ),
                                  child: SvgPicture.asset(
                                    ImagePath.imagePath.returnOnHistoryIcon,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                //texts
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "# 01 Package Return On",
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 12,
                                          color: dark
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Gap(10),
                                    Text(
                                      "15 May 2020 8:00 am",
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

                                //returns
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "(+\$12)",
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 14,
                                          color: const Color(0xff00BF71),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Gap(10),
                                    Text(
                                      "Balance : \$1250",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: dark
                                            ? const Color(0xff838284)
                                            : const Color(0xff777B95),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    },
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

/*
CustomScrollView(
                    shrinkWrap: true,
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: 10,
                          (context, index) {
                            return ListTile(
                              tileColor: dark
                                  ? const Color(0xffF8F8F8)
                                  : Colors.white.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: dark
                                        ? Colors.transparent
                                        : Colors.white.withOpacity(0.4),
                                  )),
                              leading: CircleAvatar(
                                radius: 40,
                                backgroundColor: dark
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.1),
                                child: SvgPicture.asset(
                                  ImagePath.imagePath.returnOnHistoryIcon,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              trailing: Text(""),
                              title: Text(""),
                              subtitle: Text(""),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
 */ //sliver listview
//---------------------------------------------------------------------------------//
/*
   ListTile(
                            tileColor: dark
                                ? const Color(0xffF8F8F8)
                                : Colors.white.withOpacity(0.1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: dark
                                      ? Colors.transparent
                                      : Colors.white.withOpacity(0.4),
                                )),
                            leading: CircleAvatar(
                              radius: 40,
                              backgroundColor: dark
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.1),
                              child: SvgPicture.asset(
                                ImagePath.imagePath.returnOnHistoryIcon,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              "# 01 Package Return On",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  color: dark ? Colors.black : Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(
                              "15 May 2020 8:00 am",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: dark
                                    ? Color(0xff838284)
                                    : const Color(0xff777B95),
                              ),
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "(+\$12)",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14,
                                      color: const Color(0xff00BF71),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Balance : \$1250",
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: dark
                                        ? const Color(0xff838284)
                                        : const Color(0xff777B95),
                                  ),
                                ),
                              ],
                            ),
                          ),
 */ //list title
