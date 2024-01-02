import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';
import 'package:to_do/features/home/presentation/widget/details_task.dart';

class ListTileBody extends StatelessWidget {
  const ListTileBody({
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
      title: const Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const DetailsTaskWidget(),
    );
  }
}
