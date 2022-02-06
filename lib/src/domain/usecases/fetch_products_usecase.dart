import 'package:ecommerce_concept/src/core/params/no_params.dart';
import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/core/usecases/usecase.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';
import 'package:ecommerce_concept/src/domain/repositories/products_repository.dart';

class FetchProductsUseCase
    implements UseCase<DataState<List<ProductEntity>>, NoParams> {
  FetchProductsUseCase(this._homeRepository);

  final ProductsRepository _homeRepository;

  @override
  Future<DataState<List<ProductEntity>>> call(NoParams params) {
    return _homeRepository.fetchHomeStore();
  }
}
