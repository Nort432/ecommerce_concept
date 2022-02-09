import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';
import 'package:ecommerce_concept/src/presentation/bloc/remote_home/remote_products_bloc.dart';
import 'package:ecommerce_concept/src/presentation/screens/home/home_views/button_on_picture_home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PicturesCarouselHomeView extends StatelessWidget {
  //late List<String> pictures;
   //String pictureWithText = 'Samsung Galaxy A71';

  @override
  Widget build(BuildContext context) {
    RemoteProductsBloc _bloc = context.read<RemoteProductsBloc>();
    return Container(
      height: AppSizes.pictureCarouselSize.height,
      width: AppSizes.pictureCarouselSize.width,
      child: CarouselSlider(
        items: fetchListWidgets(_bloc.products),
        options: CarouselOptions(
          viewportFraction: 1,
        ),
      ),
    );
  }

  // Future<List<String>> fetchListStrings(ProductEntity model) async {
  //   List<String> listString = [];
  //
  //   model.homeStore.forEach((e) {
  //     listString.add(e.picture);
  //     // if(e.title == pictureWithText)
  //     //   pictureWithText = e.picture;
  //   });
  //
  //   return listString;
  // }

  List<Widget> fetchListWidgets(ProductEntity model) {
    //List<String> picturesList = await fetchListStrings(model);

    return model.homeStore.map<Widget>((m) {
      return Padding(
        padding: AppSizes.pictureCarouselPadding,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: AppSizes.borderRadius10,
              child: Image.network(
                m.picture,
                fit: BoxFit.fill,
                height: AppSizes.pictureCarouselSize.height,
                width: AppSizes.pictureCarouselSize.width,
              ),
            ),

            Positioned(
              top: AppSizes.buttonOnPicturePositioned['top'],
              left: AppSizes.buttonOnPicturePositioned['left'],
              bottom: AppSizes.buttonOnPicturePositioned['bottom'],
              child: ButtonOnPictureHomeView(homeStoreEntity: m),
            ),
          ],
        ),
      );
    }).toList();
  }
}
