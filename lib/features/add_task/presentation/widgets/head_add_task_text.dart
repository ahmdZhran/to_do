import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/core/utls/text_styles.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_divider1.dart';

class HeadAddTaskText extends StatelessWidget {
  const HeadAddTaskText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            const CustomDivider(
              thickness: 4,
            ),
            const SizedBox(width: 8.0),
            Text(
              AppStrings.addNewTask,
              style: CustomTextStyle.kanitExtraLight
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            const SizedBox(width: 8.0),
            const CustomDivider(thickness: 4),
          ],
        ),
      ),
    );
  }
}
