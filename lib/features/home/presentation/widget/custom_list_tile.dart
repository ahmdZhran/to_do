import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        decoration: BoxDecoration(
          color: AppColors.knavyColor,
          shape: BoxShape.circle,
          border: Border.all(
            width: 8,
            color: AppColors.kGreyColor,
          ),
        ),
        child: const Icon(
          Icons.check,
          size: 25,
          color: AppColors.kGreyColor,
        ),
      ),
    );
  }
}
