import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.color,
    required this.onPressed,
    required this.text,
    this.onTap,
  });

  final Color? color;
  final VoidCallback onPressed;
  final Text text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: DefaultTextStyle(
          style: const TextStyle(
              color: AppColors.kBlackColor), // Set text color to black
          child: text,
        ),
      ),
    );
  }
}
