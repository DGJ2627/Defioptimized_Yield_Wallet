import 'package:flutter/material.dart';

import '../../../../Utils/Helper/Helper.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.fieldName,
    this.validator,
    this.onSaved,
    required this.filled,
    required this.backgroundTheme,
    required this.textEditingController,
    required this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
  });

  final String fieldName;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final bool filled;
  final Color backgroundTheme;
  final TextEditingController textEditingController;
  final Icon prefixIcon;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return SizedBox(
      height: 60,
      child: TextFormField(
        validator: validator,
        onSaved: onSaved,
        controller: textEditingController,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: filled,
          fillColor: backgroundTheme,
          label: Text(fieldName),
          labelStyle: Theme.of(context).textTheme.displaySmall,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
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
    );
  }
}
