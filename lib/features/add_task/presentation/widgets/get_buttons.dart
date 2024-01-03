import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_button.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 150,
            height: 50,
            child: CustomButton(
              color: AppColors.kGreyColor,
              onPressed: () {},
              text: const Text(AppStrings.deleteTask),
            ), // Button widget for deleting task
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: CustomButton(
              onPressed: () {},
              color: AppColors.knavyColor,
              text: const Text(AppStrings.addTask),
            ), // Button widget for adding task
          ),
        ],
      ),
    );
  }
}
