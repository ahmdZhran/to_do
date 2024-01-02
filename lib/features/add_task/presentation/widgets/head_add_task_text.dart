import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/core/utls/text_styles.dart';
import 'package:to_do/core/widgets/custom_divider.dart';

class HeadAddTaskVeiwText extends StatelessWidget {
  const HeadAddTaskVeiwText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const SizedBox(width: 70, child: CustomDivider(thickness: 2)),
          Text(
            AppStrings.addNewTask,
            style: CustomTextStyle.kanitExtraLight
                .copyWith(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
