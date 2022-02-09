import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/domain/entities/home_store_entity.dart';
import 'package:ecommerce_concept/src/presentation/bloc/remote_home/remote_products_bloc.dart';
import 'package:ecommerce_concept/src/presentation/widgets/texts/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/utils/strings_constants.dart';

class ButtonOnPictureHomeView extends StatelessWidget {
  const ButtonOnPictureHomeView({
    required this.homeStoreEntity,
    Key? key}) : super(key: key);

  final HomeStoreEntity homeStoreEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        homeStoreEntity.isNew != true ? SizedBox(height: 0, width: 0)
        :
        /* Text inside circle 'New' */
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

        homeStoreEntity.title == 'Samsung Galaxy A71'
            ? SizedBox(height: 100, width: 0)
            :
            /* Text title of carousel */
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextWidget(text: homeStoreEntity.title, textStyle: AppSizes.fontPro25_7()),

            AppSizes.pictureTextSizedBox(),

            MyTextWidget(text: homeStoreEntity.subtitle, textStyle: AppSizes.fontPro11_4()),
            // SizedBox(height: 6),
          ],
        ),

        homeStoreEntity.isBuy == false ? SizedBox(height: 0, width: 0)
            :
        /* Button 'Buy now!' */
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
