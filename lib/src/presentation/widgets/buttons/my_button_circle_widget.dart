import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyButtonCircleWidget extends StatelessWidget {
  const MyButtonCircleWidget(
      {required this.imageSource,
      this.onTap,
       this.splashColor = AppColors.buttonBackgroundOrange,
       this.buttonColor = AppColors.buttonBackground,
      this.size = AppSizes.buttonBigCircle,
        this.svgColor = AppColors.svgGrey,
      Key? key})
      : super(key: key);

  final Function()? onTap;
  final Size size;
  final String imageSource;
  final Color splashColor;
  final Color buttonColor;
  final Color svgColor;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: buttonColor,
        child: InkWell(
          splashColor: splashColor,
          onTap: onTap,
          child: SizedBox(
              width: size.width,
              height: size.height,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent, width: 12)),
                child: SvgPicture.asset(imageSource, color: svgColor),
              )),
        ),
      ),
    );
  }
}
