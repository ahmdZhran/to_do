import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/core/utls/text_styles.dart';

class HeadAddTaskVeiwText extends StatelessWidget {
  const HeadAddTaskVeiwText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.addNewTask,
        style: CustomTextStyle.kanitExtraLight
            .copyWith(fontWeight: FontWeight.normal),
      ),
    );
  }
}
