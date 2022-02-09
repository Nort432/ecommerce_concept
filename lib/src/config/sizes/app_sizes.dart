import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../fonts/app_fonts.dart';

class AppSizes {
  static const Size buttonBigCircle = Size(71, 71);
  static const Size buttonSmallCircle = Size(34, 34);
  static const Size buttonBuyNow = Size(98, 23);

  static const Size productCardContainer = Size(181, 227);
  static const Size productCardPicture = Size(187, 168);
  static const EdgeInsets productCardLeftContainerMargin = EdgeInsets.only(right: 11, bottom: 12);
  static const EdgeInsets productCardRightContainerMargin = EdgeInsets.only(bottom: 12);

  static SizedBox pictureTextSizedBox() => SizedBox(height: 5);

  static SizedBox goodsPriceSizedBox() => SizedBox(width: 7); // 7

  static const Size pictureCarouselSize = Size(double.infinity, 182);

  static const double buttonsAllSizedBox = 27;

  static const double roundedRectangleBorder = 20;

  static const double bottomNavBar = 72;

  static BorderRadius borderRadius10 = BorderRadius.circular(10);
  static BorderRadius borderRadius5 = BorderRadius.circular(5);
  static BorderRadius borderRadius30 = BorderRadius.circular(30);

  static const Map<String, double> buttonOnPicturePositioned = {
    'top': 0,
    'left': 25,
    'bottom': 34,
  };

  static const double searchHeight = 34;

  //#region padding

  static const EdgeInsets bottomBarPadding =
  const EdgeInsets.all(20.0);

  static const EdgeInsets productCardPadding =
  const EdgeInsets.only(left: 17, right: 10);

  static const EdgeInsets productCardPricePadding =
  const EdgeInsets.only(left: 21, bottom: 5);

  static const EdgeInsets productCardTitlePadding =
  const EdgeInsets.only(left: 21, bottom: 10);

  static const EdgeInsets pictureCarouselPadding =
      const EdgeInsets.only(left: 15, right: 21, bottom: 11);

  static const EdgeInsets bestSellerPadding =
      const EdgeInsets.only(left: 17, right: 27, bottom: 20);

  static const EdgeInsets hotSalesPadding =
      const EdgeInsets.only(left: 17, right: 33, bottom: 8);

  static const EdgeInsets searchPadding = const EdgeInsets.only(right: 11);

  static const EdgeInsets searchAndQrCodePadding =
      const EdgeInsets.only(top: 35, right: 32, left: 37, bottom: 24);

  static const EdgeInsets selectCategoryPadding =
      const EdgeInsets.only(left: 17, right: 27, bottom: 24);

  static const EdgeInsets buttonsAllPadding = const EdgeInsets.only(bottom: 0);
  static const EdgeInsets buttonAndTextCirclePadding =
      const EdgeInsets.only(right: 23);
  static const EdgeInsets buttonCirclePadding =
      const EdgeInsets.only(bottom: 7);

  static const EdgeInsets pagePadding = const EdgeInsets.all(0);

  static const EdgeInsets appBarHomeTextMargin =
      const EdgeInsets.only(right: 11, left: 8);
  static const EdgeInsets appBarHomeSvgPadding =
      const EdgeInsets.symmetric(horizontal: 14);

  //#endregion

  //#region Text
  static TextStyle? font25_7({Color color = AppColors.text}) =>
      TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: color);

  static TextStyle? font18_5({Color color = AppColors.text}) =>
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: color);

  static TextStyle? font18_4({Color color = AppColors.text}) =>
      TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: color);

  static TextStyle? font16_7({Color color = AppColors.text}) =>
      TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: color);

  static TextStyle? font15_7({Color color = AppColors.textWhite}) =>
      TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: color);

  static TextStyle? font15_5({Color color = AppColors.text}) =>
      TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: color);

  static TextStyle? font15_4({Color color = AppColors.textOrange}) =>
      TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: color);

  static TextStyle? font12_5({Color color = AppColors.text}) =>
      TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: color);

  static TextStyle? font12_4({Color color = AppColors.text}) =>
      TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color);

  static TextStyle? font11_4({Color color = AppColors.text}) =>
      TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: color);

  static TextStyle? fontPro25_7({Color color = AppColors.textWhite}) =>
      TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: color,
          fontFamily: AppFonts.sfProDisplay);

  static TextStyle? fontPro11_7({Color color = AppColors.text}) => TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w700,
      color: color,
      fontFamily: AppFonts.sfProDisplay);

  static TextStyle? fontPro11_4({Color color = AppColors.textWhite}) =>
      TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
          color: color,
          fontFamily: AppFonts.sfProDisplay);

  static TextStyle? fontPro10_7({Color color = AppColors.textWhite}) =>
      TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: color,
          fontFamily: AppFonts.sfProDisplay);

  // static TextStyle? fontPro10_5({Color color = AppColors.textGrey}) =>
  //     TextStyle(
  //       fontSize: 10,
  //       fontWeight: FontWeight.w500,
  //       color: color,
  //       fontFamily: AppFonts.sfProDisplay,
  //       decoration: TextDecoration.lineThrough,
  //     );

  static TextStyle? font10_5({Color color = AppColors.textGrey}) =>
      TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: color,
        decoration: TextDecoration.lineThrough,
      );

  static TextStyle? font10_4({Color color = AppColors.text}) =>
      TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: color,
      );

//#endregion
}
