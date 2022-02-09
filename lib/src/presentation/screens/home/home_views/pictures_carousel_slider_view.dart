import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';
import 'package:ecommerce_concept/src/presentation/bloc/remote_home/remote_products_bloc.dart';
import 'package:ecommerce_concept/src/presentation/screens/home/home_views/button_on_picture_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PicturesCarouselSliderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RemoteProductsBloc _bloc = context.read<RemoteProductsBloc>();
    List<String> pictures = fetchListStrings(_bloc.products);
    return CarouselSlider(
      items: fetchListWidgets(pictures),
      options: CarouselOptions(
        viewportFraction: 1,
      ),
    );
  }

  List<String> fetchListStrings(ProductEntity model) {
    List<String> listString = [];

    model.homeStore.forEach((e) {
      listString.add(e.picture);
    });

    return listString;
  }

  List<Widget> fetchListWidgets(List<String> picturesList) {
    return picturesList.map<Widget>((picture) {
      return Padding(
        padding: AppSizes.pictureCarouselSlider,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: AppSizes.borderRadius10,
              child: Image.network(
                picture,
                fit: BoxFit.fill,
                height: AppSizes.pictureSize.height,
                width: AppSizes.pictureSize.width,
              ),
            ),
            ...if(true)() =>,
            Positioned(
              top: AppSizes.picturePositioned['top'],
              left: AppSizes.picturePositioned['left'],
              bottom: AppSizes.picturePositioned['bottom'],
              child: ButtonOnPictureView(),
            ),
          ],
        ),
      );
    }).toList();
  }
}
