import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';
import 'package:to_do/core/utls/text_styles.dart';

class CustomTextFomField extends StatelessWidget {
  const CustomTextFomField({
    super.key,
    required this.lableText,
    this.onChanged,
    this.keyboardType,
    this.suffix,
    this.obscureText = false,
    this.onFieldSubmitted,
  });
  final String lableText;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final bool obscureText;
  final void Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        cursorColor: AppColors.knavyColor,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: (value) {
          if (value!.isEmpty) {
            return 'this field is required';
          } else {
            return null;
          }
        },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          suffix: suffix,
          filled: true,
          fillColor: AppColors.kGreyColor,
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          labelText: lableText,
          labelStyle: CustomTextStyle.normal15Grey,
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: const BorderSide(color: AppColors.kWhiteGrey),
  );
}
