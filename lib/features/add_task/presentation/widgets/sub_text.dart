import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/core/utls/text_styles.dart';

class SubTextHead extends StatelessWidget {
  const SubTextHead({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.whatAreYouPlaying,
      style: CustomTextStyle.normal15Grey,
    );
  }
}
