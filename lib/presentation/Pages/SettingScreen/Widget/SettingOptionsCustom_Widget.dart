import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Utils/Helper/Helper.dart';

class SettingOptionsCustomWidget extends StatelessWidget {
  const SettingOptionsCustomWidget({
    super.key,
    required this.trailing,
    required this.lightImagePath,
    required this.darkImagePath,
    this.onTap,
    required this.optionName,
  });

  final String lightImagePath;
  final String optionName;
  final String darkImagePath;
  final Widget trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          width: 335,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
            borderRadius: BorderRadius.circular(10),
            color:
                dark ? const Color(0xffF8F8F8) : Colors.white.withOpacity(0.1),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color:
                          dark ? Colors.white : Colors.white.withOpacity(0.1),
                      shape: BoxShape.circle),
                  child: SvgPicture.asset(
                    fit: BoxFit.cover,
                    dark ? lightImagePath : darkImagePath,
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      optionName,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    trailing,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
