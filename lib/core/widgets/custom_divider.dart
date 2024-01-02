import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.height,
    this.indent,
    this.thickness,
  });
  final double? height;
  final double? indent;
  final double? thickness;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Divider(
        height: height,
        indent: indent,
        thickness: thickness,
        color: AppColors.kGreyColor,
      ),
    );
  }
}
