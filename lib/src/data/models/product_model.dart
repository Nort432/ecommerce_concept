import 'package:ecommerce_concept/src/data/models/best_seller_model.dart';
import 'package:ecommerce_concept/src/data/models/home_store_model.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel(
      {required int id,
      required List<HomeStoreModel> homeStore,
      required List<BestSellerModel> bestSeller})
      : super(id: id, homeStore: homeStore, bestSeller: bestSeller);

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['_id'] as int,
        homeStore: json['home_store'] != null
            ? (json['home_store'] as List<dynamic>)
                .map<HomeStoreModel>((e) => HomeStoreModel.fromJson(e))
                .toList()
            : [] as List<HomeStoreModel>,
        bestSeller: json['best_seller'] != null
            ? (json['best_seller'] as List<dynamic>)
                .map<BestSellerModel>((e) => BestSellerModel.fromJson(e))
                .toList()
            : [] as List<BestSellerModel>);
  }
}
