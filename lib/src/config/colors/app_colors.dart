import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../core/utils/strings_constants.dart';

class AppColors {
  static const Color pageBackground = Color(0xFFE5E5E5);

  static const Color buttonBackground = Color(0xFFFFFFFF);
  static const Color buttonBackgroundOrange = Color(0xFFFF6E4E);

  static const Color text = Color(0xFF010035);
  static const Color textOrange = Color(0xFFFF6E4E);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textGrey = Color(0xFFCCCCCC);

  static const Color svgOrange = Color(0xFFFF6E4E);
  static const Color svgGrey = Color(0xFFB3B3C3);
  static const Color svgArrow = Color(0xFFB2B2B2);
  static const Color svgWhite = Color(0xFFFFFFFF);
  static const Color svgDark = Color(0xFF010035);

  static List<ButtonColorsModel> listColors = [
    ButtonColorsModel(
        name: kPhones,
        background: AppColors.buttonBackground,
        svg: AppColors.svgGrey),
    ButtonColorsModel(
        name: kComputer,
        background: AppColors.buttonBackground,
        svg: AppColors.svgGrey),
  ];

// Map<String, Color> mapColors = {
//   kPhones: AppColors.buttonBackground,
//   kComputer: AppColors.buttonBackground,
//   kHealth: AppColors.buttonBackground,
//   kBooks: AppColors.buttonBackground,
//   kHeadphones: AppColors.buttonBackground,
// };
}

class ButtonColorsModel extends Equatable {
  ButtonColorsModel(
      {required this.name, required this.background, required this.svg});

  late String name;
  late Color background;
  late Color svg;

  @override
  List<Object?> get props => [name, background, svg];
  //
  // @override
  // bool get stringify => true;
}


