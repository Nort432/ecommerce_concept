import 'dart:_internal';

import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/data/datasources/remote/products_service.dart';
import 'package:ecommerce_concept/src/data/models/product_model.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';
import 'package:ecommerce_concept/src/domain/repositories/products_repository.dart';
import 'package:dio/dio.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  late final ProductsService _homeService;

  @override
  Future<DataState<List<ProductEntity>>> fetchHomeStore() async {
    try {
      final httpResponse = await _homeService.fetchHomePage();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        List<ProductModel> homeModel = httpResponse.data as List<ProductModel>;
        return DataSuccess(homeModel);
      }

      return DataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
