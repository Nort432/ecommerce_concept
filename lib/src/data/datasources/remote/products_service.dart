import 'package:ecommerce_concept/src/core/utils/links_constants.dart';
import 'package:ecommerce_concept/src/data/models/product_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'products_service.g.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class ProductsService {
  factory ProductsService(Dio dio, {String baseUrl}) = _ProductsService;

  @GET(kUrlHome)
  @Headers(<String, dynamic>{
    kContentType : kAppJson,
    kApiKeyName : kApiKey
  })
  Future<HttpResponse<ProductModel>> fetchHomePage();
}