import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/core/utils/strings_constants.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';

import 'app_bar_home_view.dart';
import 'header_text_button_view.dart';
import 'pictures_carousel_slider_view.dart';
import 'search_home_view.dart';
import 'top_buttons_home_view.dart';

class BuildPageHomeView extends StatelessWidget {
  const BuildPageHomeView(this.products, {Key? key}) : super(key: key);

  final ProductEntity products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHomeView().appBar(),
      body: Padding(
        padding: AppSizes.pagePadding,
        child: Column(
          children: [

            HeaderTextButtonView(
              text: kSelectCategory,
              textButton: kViewAll,
              padding: AppSizes.selectCategoryPadding,
            ),

            TopButtonsHomeView(),

            SearchHomeView(),

            HeaderTextButtonView(
              text: kHotSales,
              textButton: kSeeMore,
              padding: AppSizes.hotSalesPadding,
            ),

            PicturesCarouselSliderView(),
          ],
        ),
      ),
    );
  }
}

