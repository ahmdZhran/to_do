import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/core/utls/text_styles.dart';

class HeadAddTaskVeiwText extends StatelessWidget {
  const HeadAddTaskVeiwText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            const Expanded(
              child: Divider(
                color: AppColors.kGreyColor,
                thickness: 4,
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              AppStrings.addNewTask,
              style: CustomTextStyle.kanitExtraLight
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            const SizedBox(width: 8.0),
            const Expanded(
              child: Divider(
                color: AppColors.kGreyColor,
                thickness: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
