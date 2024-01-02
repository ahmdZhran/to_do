import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/core/utls/text_styles.dart';

class SubTextHead extends StatelessWidget {
  const SubTextHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, top: 20),
      child: Text(
        AppStrings.whatAreYouPlaying,
        style: CustomTextStyle.normal15Grey,
      ),
    );
  }
}
