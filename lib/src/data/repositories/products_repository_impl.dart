import 'dart:io';
import 'dart:ui';

import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/core/params/no_params.dart';
import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/data/datasources/remote/products_service.dart';
import 'package:ecommerce_concept/src/data/models/product_model.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';
import 'package:ecommerce_concept/src/domain/repositories/products_repository.dart';
import 'package:dio/dio.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  const ProductsRepositoryImpl(this._productsService);
  final ProductsService _productsService;

  @override
  Future<DataState<ProductEntity>> fetchProductsRepository(NoParams noParams) async {
    try {
      final httpResponse = await _productsService.fetchProductsService();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        ProductModel productModel = httpResponse.data;
        return DataSuccess(productModel);
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
      print(e);
      print(StackTrace.current);
      return DataFailed(e);
    }
  }
}
