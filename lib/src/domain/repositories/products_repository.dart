import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';

abstract class ProductsRepository {
  Future<DataState<List<ProductEntity>>> fetchHomeStore();
}
