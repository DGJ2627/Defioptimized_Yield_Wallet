import 'dart:io';
import 'dart:math';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../../Utils/Helper/Helper.dart';
import '../../../../Widgets/CustomButton_Widget.dart';
import '../model/userticketmodel.dart';

class UserTicketController extends GetxController {
  static UserTicketController get instance => Get.find();

  final userTickets = <UserTicketModel>[].obs;
  final userTicketNameController = TextEditingController();
  final userTicketMessageController = TextEditingController();
  final filesList = <File>[].obs;
  final globalKey = GlobalKey<FormState>();
  var statusList = ['pending', 'successful', 'close'];
  Map<String, dynamic> statusListS = {
    "pending": const Color(0xffFF3B30),
    "successful": const Color(0xff00BF71),
    "close": const Color(0xffFEAD05),
  };
  final random = Random();

  void addUserTicket() {
    String formattedTime = DateFormat('d MMM yy').format(DateTime.now());
    // String ticketStatus = statusList[random.nextInt(statusList.length)];
    final keys = statusListS.keys.toList();
    final randomKey = keys[random.nextInt(keys.length)];
    final randomColor = statusListS[randomKey]!;

    if (userTicketNameController.text.isNotEmpty &&
        userTicketMessageController.text.isNotEmpty) {
      userTickets.add(
        UserTicketModel(
          userTicketName: userTicketNameController.text,
          userTicketMessage: userTicketMessageController.text,
          userTicketFiles: filesList.toList(),
          currentTime: formattedTime,
          ticketStatus: randomKey,
          ticketStatusColor: randomColor,
        ),
      );
    }
  }

  void clearTicketOldData() {
    userTicketNameController.clear();
    userTicketMessageController.clear();
    // filesList.clear();
  }

  void pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['png', 'jpg', 'pdf'],
    );

    if (result != null) {
      filesList.addAll(result.paths.map((path) => File(path!)));
    }
  }

  handleUpload(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final width = HelperFunction.screenWidth(context);
    final height = HelperFunction.screenHeight(context);
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text(
            "Option",
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: dark ? const Color(0xff838284) : const Color(0xff777B95),
              decorationColor: Colors.red,
            ),
          ),
          actions: [
            CupertinoActionSheetAction(
              child: Text(
                "Upload Files",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: dark ? Colors.black : Colors.white),
              ),
              onPressed: () {
                uploadPickFiles(allowMultiple: true);
                Navigator.pop(context);
              },
            ),
            CupertinoActionSheetAction(
              child: Text(
                "Gallery",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: dark ? Colors.black : Colors.white),
              ),
              onPressed: () {
                uploadPickFiles(isImage: true);
                Navigator.pop(context);
              },
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Get.back();
            },
            child: CustomButtonWidget(
              height: height * 0.066,
              width: width,
              text: "Cancel",
            ),
          ),
        );
      },
    );
  }

  Future<void> uploadPickFiles(
      {bool allowMultiple = false, bool isImage = false}) async {
    if (filesList.length >= 5) {
      debugPrint("Maximum file limit reached");
      return;
    }

    if (isImage) {
      var status = await Permission.photos.status;
      if (!status.isGranted) {
        await Permission.photos.request();
        status = await Permission.photos.status;
        if (!status.isGranted) {
          debugPrint('Permission denied for accessing photos');
          return;
        }
      }
    }

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: allowMultiple,
      type: isImage ? FileType.image : FileType.custom,
      allowCompression: true,
      allowedExtensions: isImage
          ? null
          : [
              'pdf',
              'xls',
            ],
    );

    if (result != null) {
      var listTemp = result.paths.map((path) => File(path!)).toList();
      filesList.addAll(listTemp.take(5 - filesList.length));
      update(['home']);
      debugPrint("-----List $filesList");
    } else {
      debugPrint("No file selected");
    }
  }
}
