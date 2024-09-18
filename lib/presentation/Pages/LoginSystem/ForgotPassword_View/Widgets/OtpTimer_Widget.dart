// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Countdown extends AnimatedWidget {
//   final Animation<int>? animation;
//
//   Countdown({
//     Key? key,
//     this.animation,
//   }) : super(key: key, listenable: animation!);
//
//   @override
//   build(BuildContext context) {
//     Duration clockTimer = Duration(seconds: animation!.value);
//
//     String timerText =
//         '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
//
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text(
//           "Timer",
//           style: TextStyle(fontSize: 30, color: Colors.black),
//         ),
//         Text(
//           timerText,
//           style: const TextStyle(fontSize: 30, color: Colors.black),
//         ),
//       ],
//     );
//   }
// }

import 'dart:async';

import 'package:get/get.dart';

class OtpTimerController extends GetxController {
  OtpTimerController get instance => Get.find();

  static const maxSec = 20;
  Rx<int> sec = maxSec.obs;
  Timer? timer;

  void startTime() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      sec.value--;

      if (sec.value == 0) {
        timer?.cancel();
      }
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    startTime();
  }
}
