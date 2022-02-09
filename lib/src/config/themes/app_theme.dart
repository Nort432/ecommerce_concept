import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/fonts/app_fonts.dart';
import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../core/utils/strings_constants.dart';
import '../../data/models/button_colors_model.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: AppColors.appBarBackground,
      ),
      backgroundColor: AppColors.pageBackground,
      scaffoldBackgroundColor: AppColors.pageBackground,
      fontFamily: AppFonts.markPro,
    );
  }

  static List<ButtonCircleModel> listButtons = [
    ButtonCircleModel(
        name: kPhones,
        svgSource: kSvgPhone,
        nameColor: AppColors.text,
        backgroundColor: AppColors.buttonBackground,
        svgColor: AppColors.svgGrey),
    ButtonCircleModel(
        name: kComputer,
        svgSource: kSvgComputer,
        nameColor: AppColors.text,
        backgroundColor: AppColors.buttonBackground,
        svgColor: AppColors.svgGrey),
    ButtonCircleModel(
        name: kHealth,
        svgSource: kSvgHealth,
        nameColor: AppColors.text,
        backgroundColor: AppColors.buttonBackground,
        svgColor: AppColors.svgGrey),
    ButtonCircleModel(
        name: kBooks,
        svgSource: kSvgBooks,
        nameColor: AppColors.text,
        backgroundColor: AppColors.buttonBackground,
        svgColor: AppColors.svgGrey),
    ButtonCircleModel(
        name: kHeadphones,
        svgSource: kSvgHeadphones,
        nameColor: AppColors.text,
        backgroundColor: AppColors.buttonBackground,
        svgColor: AppColors.svgGrey),
  ];
}
