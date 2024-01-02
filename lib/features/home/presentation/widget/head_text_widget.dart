import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/core/utls/text_styles.dart';

class HeadTextWidget extends StatelessWidget {
  const HeadTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.myTasks,
      style: CustomTextStyle.normalBoldstyleBold,
    );
  }
}
