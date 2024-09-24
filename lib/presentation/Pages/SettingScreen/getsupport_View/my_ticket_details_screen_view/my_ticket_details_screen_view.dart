import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/getsupport_View/my_ticket_details_screen_view/cotroller/MyTicketDetailsScreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/userticketmodel.dart';

class MyTicketDetailsScreenView extends StatelessWidget {
  const MyTicketDetailsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final userTicketData =
        ModalRoute.of(context)!.settings.arguments as UserTicketModel;
    final dark = HelperFunction.isDarkMode(context);
    final height = HelperFunction.screenHeight(context);
    final width = HelperFunction.screenWidth(context);
    final messageController = Get.put(MyTicketDetailsScreenController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.keyboard_backspace_rounded,
                        color: dark ? Colors.black : Colors.white,
                        size: height * 0.03,
                      ),
                    ),
                    Text(
                      "My Ticket",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const Gap(40),
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: SizedBox(
                  height: height,
                  width: width,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 9,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: AlignmentDirectional.center,
                                    height: height * 0.046,
                                    width: width * 0.24,
                                    decoration: BoxDecoration(
                                      color: userTicketData.ticketStatusColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      userTicketData.ticketStatus,
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    userTicketData.currentTime,
                                    style: GoogleFonts.plusJakartaSans(
                                      letterSpacing: 1.0,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: dark
                                          ? const Color(0xffB3B3B3)
                                          : const Color(0xff777B95),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(30),
                              Text(
                                userTicketData.userTicketName,
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                              const Gap(30),
                              Text(
                                userTicketData.userTicketMessage,
                                style: GoogleFonts.plusJakartaSans(
                                    letterSpacing: 1.0,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: dark
                                        ? const Color(0xffB3B3B3)
                                        : const Color(0xff777B95)),
                              ),
                              const Gap(20),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: dark
                              ? const Color(0xffF8F8F8)
                              : const Color(0xff2C3144),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: dark
                                  ? Colors.transparent
                                  : Colors.white.withOpacity(0.1)),
                        ),
                        child: TextFormField(
                          controller: messageController.sendMessageController,
                          onTapOutside: (event) {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            labelText: "Message...",
                            labelStyle: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: dark
                                  ? const Color(0xff838284)
                                  : const Color(0xff777B95),
                            ),
                            suffixIcon: SizedBox(
                              height: 48,
                              width: 100,
                              child: Row(
                                children: [
                                  Container(
                                    alignment: AlignmentDirectional.center,
                                    height: 48,
                                    width: 48,
                                    child: SvgPicture.asset(
                                      ImagePath.imagePath.sendAttachmentIconSvg,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    alignment: AlignmentDirectional.center,
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xff379FFE),
                                          Color(0xff555DFD),
                                        ],
                                      ),
                                    ),
                                    child: SvgPicture.asset(
                                        fit: BoxFit.cover,
                                        ImagePath.imagePath.sendMessageIconSvg),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(20),
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
