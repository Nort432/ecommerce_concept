import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/fonts/app_fonts.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white,
      ),
      backgroundColor: AppColors.pageBackground,
      scaffoldBackgroundColor: AppColors.pageBackground,
      fontFamily: AppFonts.markPro,
      textTheme: const TextTheme(

      ),
    );
  }
}
