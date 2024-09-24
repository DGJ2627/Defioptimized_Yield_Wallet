import 'package:defioptimized_yield/Utils/constants/ImagePath/ImagePath.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../Utils/Helper/Helper.dart';
import '../controller/userticket_controller.dart';
import '../model/userticketmodel.dart';

class CreateTicketView extends StatelessWidget {
  const CreateTicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final height = HelperFunction.screenHeight(context);
    final width = HelperFunction.screenWidth(context);
    final userTicketController = Get.put(UserTicketController());
    return Scaffold(
      backgroundColor: dark ? Colors.white : const Color(0xff26283166),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: dark ? Colors.white : Colors.black,
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          "Create Ticket",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.keyboard_backspace_rounded,
            color: dark ? Colors.black : Colors.white,
            size: height * 0.03,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: userTicketController.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ticket Title",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: dark ? Colors.black : Colors.white),
              ),
              const Gap(10),
              SizedBox(
                height: height * 0.068,
                child: TextFormField(
                  validator: (value) =>
                      value!.isEmpty ? "Enter Title Ticket" : null,
                  controller: userTicketController.userTicketNameController,
                  onTapOutside: (event) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: dark
                        ? const Color(0xffF8F8F8)
                        : const Color(0x0fffffff).withOpacity(0.1),
                    label: const Text("Enter Ticket title"),
                    labelStyle: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: dark
                          ? const Color(0xffB3B3B3)
                          : const Color(0xff777B95),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: dark
                            ? const Color(0xffE4DFDF)
                            : const Color(0x0fffffff).withOpacity(0.2),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Text(
                "Write Message",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: dark ? Colors.black : Colors.white),
              ),
              const Gap(10),
              SizedBox(
                height: height * 0.14,
                child: TextFormField(
                  validator: (value) =>
                      value!.isEmpty ? "Enter Message Ticket" : null,
                  onTapOutside: (event) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  controller: userTicketController.userTicketMessageController,
                  maxLines: 200,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: dark
                        ? const Color(0xffF8F8F8)
                        : const Color(0x0fffffff).withOpacity(0.1),
                    label: const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Enter Write Message"),
                      ),
                    ),
                    labelStyle: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: dark
                          ? const Color(0xffB3B3B3)
                          : const Color(0xff777B95),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: dark
                            ? const Color(0xffE4DFDF)
                            : const Color(0x0fffffff).withOpacity(0.2),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Container(
                height: height * 0.09,
                width: width,
                decoration: BoxDecoration(
                  color: dark
                      ? const Color(0xffF8F8F8)
                      : const Color(0x0fffffff).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: dark
                        ? const Color(0xffE4DFDF)
                        : const Color(0x0fffffff).withOpacity(0.2),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    userTicketController.uploadPickFiles();
                  },
                  child: Row(
                    children: [
                      const Gap(20),
                      SvgPicture.asset(
                        dark
                            ? ImagePath.imagePath.uploadLightIconSvg
                            : ImagePath.imagePath.uploadDarkIconSvg,
                        height: height * 0.04,
                        width: width * 0.04,
                      ),
                      const Gap(20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Upload File\n",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: dark ? Colors.black : Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: "Upload PDF, PNG or JPG format only",
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomButtonWidget(
          height: 56,
          width: width,
          text: "Submit",
          onTap: () {
            if (userTicketController.globalKey.currentState!.validate()) {
              // if (userTicketController
              //         .userTicketNameController.text.isNotEmpty &&
              //     userTicketController
              //         .userTicketMessageController.text.isNotEmpty) {
              //   userTicketController.userTickets.add(
              //     UserTicketModel(
              //       userTicketName:
              //           userTicketController.userTicketNameController.text,
              //       userTicketMessage:
              //           userTicketController.userTicketMessageController.text,
              //       userTicketFiles: userTicketController.filesList.toList(),
              //     ),
              //   );
              //   Get.back();
              //   userTicketController.userTicketNameController.clear();
              //   userTicketController.userTicketMessageController.clear();
              //   userTicketController.filesList.clear();
              // }

              userTicketController.addUserTicket();
              Get.back();
            }
          },
        ),
      ),
    );
  }
}
