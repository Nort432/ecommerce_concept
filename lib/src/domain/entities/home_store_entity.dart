import 'package:equatable/equatable.dart';

class HomeStoreEntity extends Equatable {
  const HomeStoreEntity({
    required this.id,
    required this.isNew,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.isBuy,
});

  final int id;
  final bool isNew;
  final String title;
  final String subtitle;
  final String picture;
  final bool isBuy;

  @override
  List<Object> get props => [id, isNew, title, subtitle, picture, isBuy];

  @override
  bool get stringify => true;
}