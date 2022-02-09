import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/presentation/widgets/texts/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyButtonCircleWidget extends StatelessWidget {
  const MyButtonCircleWidget({
      this.padding = EdgeInsets.zero,
      required this.imageSource,
      this.name = '',
    // this.secondPadding = AppSizes.buttonCirclePadding,
      this.nameColor = AppColors.text,
      this.onTap,
      this.splashColor = AppColors.buttonBackgroundOrange,
      this.buttonColor = AppColors.buttonBackground,
      this.size = AppSizes.buttonBigCircle,
      this.svgColor = AppColors.svgGrey,
      Key? key
  })
      : super(key: key);

  final EdgeInsets padding;
  final String name;
  final Function()? onTap;
  final Size size;
  final String imageSource;
  final Color splashColor;
  final Color buttonColor;
  final Color svgColor;
  final Color nameColor;

  @override
  Widget build(BuildContext context) {
    double widthIndentFromEdge = 20;
    EdgeInsets secondPadding = AppSizes.buttonCirclePadding;

    if(size == AppSizes.buttonSmallCircle){
      widthIndentFromEdge = 10;
      secondPadding = EdgeInsets.zero;
    }

    return Padding(
      padding: padding,
      child: Column(
        children: [
          Padding(
            padding: secondPadding,
            // padding: AppSizes.buttonCirclePadding,
            child: ClipOval(
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
                            border: Border.all(
                                color: Colors.transparent, width: widthIndentFromEdge)),
                        child: SvgPicture.asset(imageSource, color: svgColor),
                      )),
                ),
              ),
            ),
          ),
          if (name != '')
            MyTextWidget(
                text: name, textStyle: AppSizes.font12_5(color: nameColor)),
        ],
      ),
    );
  }
}
