import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Widgets/SignUpFooter_View.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Widgets/SignUpForm_Widget.dart';
import 'package:flutter/material.dart';

import '../../../Utils/Helper/Helper.dart';
import 'Widgets/SignUpHeaderWidget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = HelperFunction.screenHeight(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SignUpHeaderWidget(),
            SizedBox(
              height: Height * 0.012,
            ),
            const SignUpFormWidget(),
            SizedBox(
              height: Height * 0.02,
            ),
            const SignUpFooterScreen(),
          ],
        ),
      ),
    );
  }
}
