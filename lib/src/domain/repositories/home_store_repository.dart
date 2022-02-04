import 'package:ecommerce_concept/src/core/params/home_request.dart';
import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/domain/entities/home_store_entity.dart';

abstract class HomeStoreRepository {
  Future<DataState<List<HomeStoreEntity>>> fetchHomeStore(
    HomeRequestParams params,
  );
}
