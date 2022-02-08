import 'package:ecommerce_concept/src/core/params/no_params.dart';
import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/core/usecases/usecase.dart';
import 'package:ecommerce_concept/src/domain/repositories/products_repository.dart';

class ButtonCategoryUseCase implements UseCase<DataState<void>, NoParams> {
  const ButtonCategoryUseCase(this._productsRepository);

  final ProductsRepository _productsRepository;

  @override
  Future<DataState<void>> call(NoParams params) async {
    return await _productsRepository.buttonCategoryRepository(params);
  }
}