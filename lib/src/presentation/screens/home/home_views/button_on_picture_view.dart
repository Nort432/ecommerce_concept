import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/presentation/bloc/remote_home/remote_products_bloc.dart';
import 'package:ecommerce_concept/src/presentation/widgets/texts/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/utils/strings_constants.dart';

class ButtonOnPictureView extends StatelessWidget {
  const ButtonOnPictureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<RemoteProductsBloc>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: AppSizes.buttonSmallCircle.height,
          width: AppSizes.buttonSmallCircle.height,
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundOrange,
            shape: BoxShape.circle,
          ),
          child: Center(
              child: MyTextWidget(
            text: kNew,
            textStyle: AppSizes.fontPro10_7(),
          )),
        ),
        Column(
          children: [
            MyTextWidget(text: kIphone12, textStyle: AppSizes.fontPro25_7()),

            AppSizes.pictureTextSizedBox(),

            MyTextWidget(text: kSuperMega, textStyle: AppSizes.fontPro11_4()),
            // SizedBox(height: 6),
          ],
        ),
        Container(
          width: AppSizes.buttonBuyNow.width,
          height: AppSizes.buttonBuyNow.height,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: AppColors.buttonBackground,
              shape: RoundedRectangleBorder(
                borderRadius: AppSizes.borderRadius5,
              ),
            ),
            onPressed: () => print(kBuyNow),
            child:
                MyTextWidget(text: kBuyNow, textStyle: AppSizes.fontPro11_7()),
          ),
        ),
      ],
    );
  }
}
