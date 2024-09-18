import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Widgets/LoginForm_Widget.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Widgets/Login_Footer.dart';
import 'package:flutter/material.dart';

import 'Widgets/LoginHeader_Widget.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = HelperFunction.screenHeight(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LoginHeaderWidget(),
            SizedBox(
              height: Height * 0.012,
            ),
            const LoginFormWidget(),
            SizedBox(
              height: Height * 0.02,
            ),
            const LoginFooter(),
          ],
        ),
      ),
    );
  }
}
