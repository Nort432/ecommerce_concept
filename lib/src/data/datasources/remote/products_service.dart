import 'dart:async';

import 'package:ecommerce_concept/src/config/links/app_links.dart';
import 'package:ecommerce_concept/src/data/models/product_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'products_service.g.dart';

@RestApi(baseUrl: AppLinks.kBaseUrl)
abstract class ProductsService {
  factory ProductsService(Dio dio, {String baseUrl}) = _ProductsService;

  @GET(AppLinks.kUrlHome)
  @Headers(<String, dynamic>{
    AppLinks.kContentType : AppLinks.kAppJson,
    AppLinks.kApiKeyName : AppLinks.kApiKey
  })
  Future<HttpResponse<ProductModel>> fetchProductsService();

  Future<HttpResponse<void>> buttonCategoryService();
}