import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/getsupport_View/create_ticket_view/create_ticket_view.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/getsupport_View/my_ticket_details_screen_view/my_ticket_details_screen_view.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Utils/Helper/Helper.dart';
import 'controller/userticket_controller.dart';

class GetSupportView extends StatelessWidget {
  const GetSupportView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final height = HelperFunction.screenHeight(context);
    final width = HelperFunction.screenWidth(context);
    final userTicketController = Get.put(UserTicketController());
    return Obx(
      () => Scaffold(
        backgroundColor: dark ? Colors.white : Colors.black,
        body: Center(
          child: userTicketController.userTickets.isNotEmpty
              ?
              //generate new ticket
              GetBuilder(
                  init: userTicketController,
                  builder: (controller) {
                    return SafeArea(
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, left: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      userTicketController.clearTicketOldData();
                                      Get.to(() => const CreateTicketView());
                                    },
                                    icon: Icon(
                                      Icons.add,
                                      color: dark ? Colors.black : Colors.white,
                                      size: height * 0.03,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: ListView.separated(
                              itemBuilder: (BuildContext context, int index) {
                                final file = controller.userTickets[index];
                                //Text(file.path.split('/').last),
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(
                                          () =>
                                              const MyTicketDetailsScreenView(),
                                          arguments: file);
                                    },
                                    child: Container(
                                      height: height * 0.2,
                                      width: width,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                Colors.white.withOpacity(0.1),
                                            width: 1),
                                        borderRadius: BorderRadius.circular(10),
                                        color: dark
                                            ? const Color(0xffF8F8F8)
                                            : Colors.white.withOpacity(0.1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 16,
                                          top: 16,
                                          right: 16,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              file.userTicketName,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium,
                                            ),
                                            const Gap(10),
                                            Text(
                                              file.userTicketMessage,
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      letterSpacing: 1.0,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: dark
                                                          ? const Color(
                                                              0xffB3B3B3)
                                                          : const Color(
                                                              0xff777B95)),
                                            ),
                                            const Gap(20),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  file.currentTime,
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                    letterSpacing: 1.0,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: dark
                                                        ? const Color(
                                                            0xffB3B3B3)
                                                        : const Color(
                                                            0xff777B95),
                                                  ),
                                                ),
                                                Container(
                                                  alignment:
                                                      AlignmentDirectional
                                                          .center,
                                                  height: height * 0.038,
                                                  width: width * 0.24,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        file.ticketStatusColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Text(
                                                    file.ticketStatus,
                                                    style: GoogleFonts
                                                        .plusJakartaSans(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Colors.white),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Gap(20),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(
                                  height: 5,
                                );
                              },
                              itemCount: userTicketController.filesList.length,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )
              :

              //create ticket
              SafeArea(
                  child: Column(
                    children: [
                      const Gap(30),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
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
                              "Support",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            IconButton(
                              onPressed: () {
                                userTicketController.clearTicketOldData();
                                Get.to(() => const CreateTicketView());
                              },
                              icon: Icon(
                                Icons.add,
                                color: dark ? Colors.black : Colors.white,
                                size: height * 0.03,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(150),
                      Container(
                        alignment: Alignment.center,
                        height: height * 0.2,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3,
                              color: dark
                                  ? const Color(0xffF8F8F8)
                                  : const Color(0xff645E5E),
                            )),
                        child: SvgPicture.asset(
                          ImagePath.imagePath.generateTicketIconSvg,
                          fit: BoxFit.cover,
                          height: 48,
                          width: 48,
                        ),
                      ),
                      Text(
                        "No any tickets created",
                        style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: dark ? Colors.black : Colors.white),
                      ),
                      const Gap(20),
                      CustomButtonWidget(
                        height: height * 0.07,
                        width: width * 0.8,
                        text: "Create New Ticket",
                        onTap: () => Get.to(() => const CreateTicketView()),
                      ),
                      const Gap(100),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
