import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Utils/Helper/Helper.dart';
import '../../../Widgets/CustomButton_Widget.dart';
import '../../../Widgets/CustomDialogBox_Widget.dart';
import '../../HomeScreen/AllTransactionTabBarScreen_View/AllTransactionTabBarScreenView.dart';
import '../../LoginSystem/Controller/KeyBoardController.dart';
import '../../LoginSystem/ForgotPassword_View/Widgets/CustomOtpField_Widget.dart';
import '../../LoginSystem/Widgets/NumericKeypad _Widget.dart';

class WithdrawPasswordScreenView extends StatelessWidget {
  const WithdrawPasswordScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(KeyBoardController());
    final dark = HelperFunction.isDarkMode(context);
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: dark ? Colors.white : const Color(0xff26283166),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: dark ? Colors.white : Colors.black,
        title: Text(
          "Enter Password",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        centerTitle: true,
        toolbarHeight: 100,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.keyboard_backspace_rounded,
              color: dark ? Colors.black : Colors.white,
              size: Height * 0.04,
            )),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Height * 0.02,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Please Enter your password to process",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            SizedBox(
              height: Height * 0.04,
            ),
            Center(
              child: CustomOtpField(
                controller: controller.setPasswordController,
              ),
            ),

            SizedBox(
              height: Height * 0.04,
            ),

            //custom keyboard
            SizedBox(
              height: Height * 0.5,
              width: double.infinity,
              child: const NumericKeypadWidget(),
            ),

            SizedBox(
              height: Height * 0.03,
            ),

            //confirm btn
            Align(
              alignment: Alignment.bottomCenter,
              child: Align(
                alignment: Alignment.center,
                child: CustomButtonWidget(
                    onTap: () {
                      Get.defaultDialog(
                        radius: 10,
                        backgroundColor: dark ? Colors.white : Colors.black45,
                        title: "",
                        titleStyle: const TextStyle(fontSize: 0),
                        content: CustomDialogBox(
                          btnOnTap: () {
                            //Home Screen
                            Get.to(const AllTransactionTabBarScreenView());
                          },
                          btnText: "Done",
                          dialogTitle: "Withdraw SuccessFul",
                          dialogSubTitle: "Amount",
                        ),
                      );
                    },
                    height: Height * 0.07,
                    width: Width * 0.8,
                    text: "Confirm"),
              ),
            ),
            SizedBox(
              height: Height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
