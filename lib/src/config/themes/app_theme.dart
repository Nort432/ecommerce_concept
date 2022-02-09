import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/fonts/app_fonts.dart';
import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../core/utils/strings_constants.dart';
import '../../domain/entities/button_colors_entity.dart';

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

  static List<ButtonCircleEntity> listButtons = [
    ButtonCircleEntity(
        name: kPhones,
        svgSource: kSvgPhone,
        nameColor: AppColors.text,
        backgroundColor: AppColors.buttonBackground,
        svgColor: AppColors.svgGrey),
    ButtonCircleEntity(
        name: kComputer,
        svgSource: kSvgComputer,
        nameColor: AppColors.text,
        backgroundColor: AppColors.buttonBackground,
        svgColor: AppColors.svgGrey),
    ButtonCircleEntity(
        name: kHealth,
        svgSource: kSvgHealth,
        nameColor: AppColors.text,
        backgroundColor: AppColors.buttonBackground,
        svgColor: AppColors.svgGrey),
    ButtonCircleEntity(
        name: kBooks,
        svgSource: kSvgBooks,
        nameColor: AppColors.text,
        backgroundColor: AppColors.buttonBackground,
        svgColor: AppColors.svgGrey),
    ButtonCircleEntity(
        name: kHeadphones,
        svgSource: kSvgHeadphones,
        nameColor: AppColors.text,
        backgroundColor: AppColors.buttonBackground,
        svgColor: AppColors.svgGrey),
  ];
}
