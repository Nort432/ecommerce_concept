import 'package:ecommerce_concept/src/domain/entities/best_seller_entity.dart';
import 'package:ecommerce_concept/src/domain/entities/home_store_entity.dart';
import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  const ProductEntity({
    required this.id,
    required this.homeStore,
    required this.bestSeller,
  });

  final String id;
  final List<HomeStoreEntity> homeStore;
  final List<BestSellerEntity> bestSeller;

  @override
  List<Object> get props => [id, homeStore, bestSeller];

  @override
  bool get stringify => true;
}