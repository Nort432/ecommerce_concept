import 'package:ecommerce_concept/src/domain/entities/best_seller_entity.dart';

class BestSellerModel extends BestSellerEntity {
  BestSellerModel({
    required int id,
    required bool isFavorites,
    required String title,
    required int priceWithoutDiscount,
    required int discountPrice,
    required String picture,
  }) : super(
            id: id,
            isFavorites: isFavorites,
            title: title,
            priceWithoutDiscount: priceWithoutDiscount,
            discountPrice: discountPrice,
            picture: picture);

  factory BestSellerModel.fromJson(Map<String, dynamic> json) {
    return BestSellerModel(
        id: json['id'] as int,
        isFavorites: json['is_favorites'] as bool,
        title: json['title'] as String,
        priceWithoutDiscount: json['price_without_discount'] as int,
        discountPrice: json['discount_price'] as int ,
        picture: json['picture'] as String
    );
  }

  // Map<String, dynamic> toJson() {
  //   final _data = <String, dynamic>{};
  //   _data['id'] = id;
  //   _data['is_favorites'] = isFavorites;
  //   _data['title'] = title;
  //   _data['price_without_discount'] = priceWithoutDiscount;
  //   _data['discount_price'] = discountPrice;
  //   _data['picture'] = picture;
  //   return _data;
  // }
}
