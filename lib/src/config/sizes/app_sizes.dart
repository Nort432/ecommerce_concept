import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppSizes {
  static const Size buttonBigCircle = Size(71, 71);
  static const Size buttonSmallCircle = Size(34, 34);

  static TextStyle? font25_7({Color color = AppColors.text}) => TextStyle(
      fontSize: 25, fontWeight: FontWeight.w700, color: AppColors.text);

  // headline2: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.text),
  //
  static TextStyle? font15_5({Color color = AppColors.text}) =>
      TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: color);
// headline4: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.text),
//
// headline5: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.text),
//
// headline6: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: AppColors.text),
//
// headline7: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: AppColors.text),
// headline8: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.text),
}
