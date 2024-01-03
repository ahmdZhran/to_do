import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.onTap,
  });

  final VoidCallback onPressed;
  final Text text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.knavyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: DefaultTextStyle(
          style: const TextStyle(
              color: AppColors.kGreyColor), // Set text color to black
          child: text,
        ),
      ),
    );
  }
}
