import 'dart:ui';

import 'package:ecommerce_concept/src/core/params/no_params.dart';
import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';

abstract class ProductsRepository {
  Future<DataState<ProductEntity>> fetchProductsRepository(NoParams noParams);
}
