import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Utils/Helper/Helper.dart';
import '../../../Widgets/CustomButton_Widget.dart';
import '../../../Widgets/CustomDialogBox_Widget.dart';
import '../../BottomNavigationScreen/BottomNavigationScreen_VIew.dart';
import '../Controller/Login_Controller.dart';
import '../Controller/PasswordShow_Controller.dart';
import '../Widgets/CustomTextField_Widget.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final dark = HelperFunction.isDarkMode(context);
    final Height = HelperFunction.screenHeight(context);
    final Width = HelperFunction.screenWidth(context);
    final passwordShowController = Get.put(PasswordShowController());

    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: dark ? Colors.white : const Color(0xff26283166),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: dark ? Colors.white : Colors.black,
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
              Text(
                "Create New Password",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(
                height: Height * 0.020,
              ),
              Text(
                "Your new password must be different from previous used password.",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(
                height: 20,
              ),

              //create new password
              CustomTextField(
                validator: (val) {
                  return null;
                },
                onSaved: (val) {},
                fieldName: "New Password",
                filled: true,
                backgroundTheme: dark
                    ? Colors.white
                    : const Color(0x0fffffff).withOpacity(0.2),
                textEditingController: controller.createNewPasswordController,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: dark ? const Color(0xffE4DFDF) : Colors.white,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    passwordShowController
                            .isObscureTextCreateNewPassword.value =
                        !passwordShowController
                            .isObscureTextCreateNewPassword.value;
                  },
                  icon: passwordShowController
                          .isObscureTextCreateNewPassword.value
                      ? Icon(
                          CupertinoIcons.eye_slash,
                          color: dark ? const Color(0xffE4DFDF) : Colors.white,
                        )
                      : Icon(
                          CupertinoIcons.eye,
                          color: dark ? const Color(0xffE4DFDF) : Colors.white,
                        ),
                ),
                obscureText:
                    passwordShowController.isObscureTextCreateNewPassword.value,
              ),

              SizedBox(
                height: Height * 0.030,
              ),

              //confirm password
              CustomTextField(
                validator: (val) {
                  return null;
                },
                onSaved: (val) {},
                fieldName: "Confirm Password",
                filled: true,
                backgroundTheme: dark
                    ? Colors.white
                    : const Color(0x0fffffff).withOpacity(0.2),
                textEditingController: controller.confirmPasswordController,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: dark ? const Color(0xffE4DFDF) : Colors.white,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    passwordShowController.isObscureTextConfirmPassword.value =
                        !passwordShowController
                            .isObscureTextConfirmPassword.value;
                  },
                  icon: passwordShowController
                          .isObscureTextConfirmPassword.value
                      ? Icon(
                          CupertinoIcons.eye_slash,
                          color: dark ? const Color(0xffE4DFDF) : Colors.white,
                        )
                      : Icon(
                          CupertinoIcons.eye,
                          color: dark ? const Color(0xffE4DFDF) : Colors.white,
                        ),
                ),
                obscureText:
                    passwordShowController.isObscureTextConfirmPassword.value,
              ),

              SizedBox(
                height: Height * 0.060,
              ),

              //Save btn & dialog box

              Align(
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
                              Get.offAll(const BottomNavigationScreen());
                            },
                            btnText: "Save",
                            dialogTitle: "Congratulation!",
                            dialogSubTitle:
                                "Your Transaction Passcode has been Set\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully.",
                          ));
                    },
                    height: Height * 0.07,
                    width: Width * 0.8,
                    text: "Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
