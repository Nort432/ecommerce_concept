import 'package:ecommerce_concept/src/core/params/no_params.dart';
import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/core/usecases/usecase.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';
import 'package:ecommerce_concept/src/domain/repositories/products_repository.dart';

class FetchProductsUseCase
    implements UseCase<DataState<ProductEntity>, NoParams> {
  const FetchProductsUseCase(this._productsRepository);

  final ProductsRepository _productsRepository;

  @override
  Future<DataState<ProductEntity>> call(NoParams params) async {
    return await _productsRepository.fetchProductsRepository(params);
  }
}
