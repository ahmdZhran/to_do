import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    required this.thickness,
  }) : super(key: key);

  final double thickness;

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
      child: Divider(
        color: AppColors.kGreyColor,
        thickness: 4,
        endIndent: 20,
        indent: 20,
      ),
    );
  }
}
