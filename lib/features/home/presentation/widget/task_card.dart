import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';
import 'package:to_do/features/home/presentation/widget/custom_list_tile.dart';

class TaskCardItem extends StatelessWidget {
  const TaskCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //! navigate to task view to can see all details
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        decoration: BoxDecoration(
            color: AppColors.kGreyColor,
            borderRadius: BorderRadius.circular(12)),
        duration: const Duration(milliseconds: 600),
        child: const CustomListTile(),
      ),
    );
  }
}
