import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/domain/entities/best_seller_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/strings_constants.dart';
import '../../../widgets/buttons/my_button_circle_widget.dart';
import '../../../widgets/texts/my_text_widget.dart';

class ProductCardHomeView extends StatelessWidget {
  const ProductCardHomeView({this.margin, required this.bs, Key? key})
      : super(key: key);

  final EdgeInsets? margin;
  final BestSellerEntity bs;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.productCardContainer.width,
      height: AppSizes.productCardContainer.height,
      margin: margin,
      decoration: BoxDecoration(
          color: AppColors.containerWhite,
          // color: Colors.blueAccent,
          borderRadius: AppSizes.borderRadius10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /* Image and Button Favorite */
          Stack(
            children: [
              ClipRRect(
                borderRadius: AppSizes.borderRadius10,
                child: checkAvailablePictures(
                  urlPicture: bs.picture,
                  size: AppSizes.productCardPicture,
                ),
              ),
              Positioned(
                top: 11,
                right: 12,
                child: MyButtonCircleWidget(
                  imageSource: bs.isFavorites == true
                      ? kSvgFavoriteFilled
                      : kSvgFavorite,
                  size: AppSizes.buttonSmallCircle,
                  svgColor: AppColors.buttonBackgroundOrange,
                  buttonColor: AppColors.buttonFavoriteLightGrey,
                  onTap: () => print('favorite'),
                ),
              ),
            ],
          ),

          /* Price */
          Expanded(
            flex: 0,
            child: Padding(
              padding: AppSizes.productCardPricePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 0,
                    child: MyTextWidget(
                        text: '${kDollar}${bs.priceWithoutDiscount}',
                        textStyle: AppSizes.font16_7()),
                  ),
                  AppSizes.goodsPriceSizedBox(),
                  Expanded(
                    flex: 0,
                    child: MyTextWidget(
                        text: '${kDollar}${bs.discountPrice}',
                        textStyle: AppSizes.font10_5()),
                  )
                ],
              ),
            ),
          ),

          /* Title */
          Padding(
            padding: AppSizes.productCardTitlePadding,
            child: MyTextWidget(text: bs.title, textStyle: AppSizes.font10_4()),
          ),
        ],
      ),
    );
  }

  Widget checkAvailablePictures(
      {required String urlPicture, required Size size}) {
    print(urlPicture);

    Widget widget = Image.network(
        urlPicture,
        width: size.width,
        height: size.height,
        loadingBuilder: (ctx, child, loading) => (loading == null)
            ? child
            : CupertinoActivityIndicator(
                color: AppColors.loading,
              ),
        errorBuilder: (ctx, error, stackTrace) =>
            Image.network(
                kNoImage,
                width: size.width,
                height: size.height
            )
        );

    return widget;
  }
}
