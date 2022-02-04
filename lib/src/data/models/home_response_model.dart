import 'package:ecommerce_concept/src/data/models/best_seller_model.dart';
import 'package:ecommerce_concept/src/data/models/home_store_model.dart';
import 'package:ecommerce_concept/src/domain/entities/best_seller_entity.dart';
import 'package:ecommerce_concept/src/domain/entities/home_store_entity.dart';

class HomeResponseModel {
  HomeResponseModel(
      {required this.id, required this.homeStore, required this.bestSeller});

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) {
    return HomeResponseModel(
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

  final int id;
  final List<HomeStoreModel> homeStore;
  final List<BestSellerModel> bestSeller;

//
// const HomeResponseModel(
//     {required int id,
//     required List<HomeStoreEntity> homeStore,
//     required List<BestSellerEntity> bestSeller})
//     : super(id: id, homeStore: homeStore, bestSeller: bestSeller);
//
// factory HomeResponseModel.fromJson(Map<String, dynamic> json) {
//   return HomeResponseModel(
//       id: json['_id'] as int,
//       homeStore: json['home_store'] != null
//           ? (json['home_store'] as List<dynamic>)
//               .map<HomeStoreEntity>((e) => HomeStoreModel.fromJson(e))
//               .toList()
//           : [] as List<HomeStoreEntity>,
//       bestSeller: json['best_seller'] != null
//           ? (json['best_seller'] as List<dynamic>)
//               .map<BestSellerEntity>((e) => BestSellerModel.fromJson(e))
//               .toList()
//           : [] as List<BestSellerEntity>);
// }

// Map<String, dynamic> toJson() {
//   final map = <String, dynamic>{};
//   map['_id'] = id;
//
//   map['home_store'] = homeStore.map((v) => v.toJson()).toList();
//
//   map['best_seller'] = bestSeller.map((v) => v.toJson()).toList();
//
//   return map;
// }
}
