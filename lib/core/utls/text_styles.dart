import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';

abstract class CustomTextStyle {
  static const regularBoldstyleBold = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    fontFamily: 'Kanit',
  );
  static const kanitExtraLight = TextStyle(
    fontSize: 35,
    fontFamily: 'Kanit-ExtraLight',
  );
  static const normal15Grey = TextStyle(
      fontSize: 15,
      fontFamily: 'Kanit-ExtraLight',
      color: AppColors.kWhiteGrey);
}
