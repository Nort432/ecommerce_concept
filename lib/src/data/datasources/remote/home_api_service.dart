import 'package:ecommerce_concept/src/core/utils/links_constants.dart';
import 'package:ecommerce_concept/src/data/models/home_response_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {required String baseUrl}) = _HomeApiService;

  @GET(kUrlHome)
  Future<HttpResponse<HomeResponseModel>> fetchHomePage({
    @Query(kApiKeyName) String kApiKey,
  });
}

// After writing this piece of code, it definitely gonna show bunch of errors..
// why? because we have to run the build_runner to generate the proper code for us.
// And to generate that code run the following command in the terminal
// > flutter pub run build_runner build
// After that, everything should be just fine.. but what is that? annotations?
// abstractions again?
