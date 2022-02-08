import 'package:ecommerce_concept/src/domain/entities/home_store_entity.dart';

class HomeStoreModel extends HomeStoreEntity {
  HomeStoreModel({
    required int id,
    required bool isNew,
    required String title,
    required String subtitle,
    required String picture,
    required bool isBuy,
  }) : super(
            id: id,
            isNew: isNew,
            title: title,
            subtitle: subtitle,
            picture: picture,
            isBuy: isBuy);

  factory HomeStoreModel.fromJson(Map<String, dynamic> json) {
    return HomeStoreModel(
        id: json['id'] as int,
        isNew: json['is_new'] == null ? false : json['is_new'] as bool,
        title: json['title'] as String,
        subtitle: json['subtitle'] as String,
        picture: json['picture'] as String,
        isBuy: json['is_buy'] as bool);
  }

// Map<String, dynamic> toJson() {
//   final _data = <String, dynamic>{};
//   _data['id'] = id;
//   _data['is_new'] = isNew;
//   _data['title'] = title;
//   _data['subtitle'] = subtitle;
//   _data['picture'] = picture;
//   _data['is_buy'] = isBuy;
//   return _data;
// }
}
