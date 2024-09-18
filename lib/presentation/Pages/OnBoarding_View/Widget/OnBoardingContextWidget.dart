import 'package:defioptimized_yield/Utils/Helper/Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingContextWidget extends StatelessWidget {
  const OnBoardingContextWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    required this.gradientColor,
  });

  final String imagePath;
  final String title;
  final String subTitle;

  final List<Color> gradientColor;

  @override
  Widget build(BuildContext context) {
    final double widthPadding = HelperFunction.screenWidth(context);
    final double height = HelperFunction.screenHeight(context);
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: height * 0.5,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              begin: const Alignment(-2, -6),
              end: const Alignment(0.8, 1),
              colors: gradientColor,
            ),
          ),
          child: SvgPicture.asset(imagePath),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Padding(
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: widthPadding * 0.18),
          child: Text(
            subTitle,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ],
    );
  }
}
