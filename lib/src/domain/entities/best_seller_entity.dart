import 'package:equatable/equatable.dart';

class BestSellerEntity extends Equatable {
  const BestSellerEntity(
      {required this.id,
      required this.isFavorites,
      required this.title,
      required this.priceWithoutDiscount,
      required this.discountPrice,
      required this.picture});

  final int id;
  final bool isFavorites;
  final String title;
  final int priceWithoutDiscount;
  final int discountPrice;
  final String picture;

  @override
  List<Object> get props =>
      [id, isFavorites, title, priceWithoutDiscount, discountPrice, picture];

  @override
  bool get stringify => true;
}
