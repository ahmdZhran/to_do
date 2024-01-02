import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Divider(
        height: 40,
        indent: 140,
        thickness: 2,
        color: AppColors.kGreyColor,
      ),
    );
  }
}
