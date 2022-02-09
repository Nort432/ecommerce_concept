import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/core/utils/strings_constants.dart';
import 'package:ecommerce_concept/src/domain/entities/best_seller_entity.dart';
import 'package:ecommerce_concept/src/presentation/bloc/remote_home/remote_products_bloc.dart';
import 'package:ecommerce_concept/src/presentation/screens/home/home_views/product_card_home_view.dart';
import 'package:ecommerce_concept/src/presentation/widgets/buttons/my_button_circle_widget.dart';
import 'package:ecommerce_concept/src/presentation/widgets/texts/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScrollGoodsHomeView extends StatelessWidget {
  const ScrollGoodsHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BestSellerEntity> goods =
        context.read<RemoteProductsBloc>().products.bestSeller;

    return Padding(
      padding: AppSizes.productCardPadding,
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 0.7,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0),
          itemCount: goods.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductCardHomeView(
                bs: goods[index],
                margin: AppSizes.productCardLeftContainerMargin);
          }),
    );
  }
}

