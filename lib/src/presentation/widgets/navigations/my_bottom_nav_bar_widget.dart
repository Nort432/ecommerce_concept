import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/presentation/widgets/texts/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/strings_constants.dart';
import '../containers/my_circle_widget.dart';

class MyBottomNavBarWidget extends StatelessWidget {
  const MyBottomNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppSizes.bottomNavBar,
        decoration: ShapeDecoration(
          color: AppColors.bottomNavBar,
          shape: RoundedRectangleBorder(
            borderRadius: AppSizes.borderRadius30,
          ),
        ),
        padding: AppSizes.bottomBarPadding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                MyCircleWidget(),
                MyTextWidget(text: kExplorer, textStyle: AppSizes.font15_7()),
              ],
            ),
            SvgPicture.asset(kSvgShop),
            SvgPicture.asset(kSvgHeart),
            SvgPicture.asset(kSvgPerson),
          ],
        ));
  }
}