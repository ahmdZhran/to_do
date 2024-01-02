import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/core/utls/assets.dart';

class ShowLottieFileWidget extends StatelessWidget {
  const ShowLottieFileWidget({
    super.key,
    required this.test,
  });

  final List<int> test;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(
          lottieUrl,
          height: 200,
          width: 200,
          animate: test.isNotEmpty ? false : true,
        ),
        const Text(
          AppStrings.planYourDay,
        ),
      ],
    );
  }
}
