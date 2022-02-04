import 'package:ecommerce_concept/src/core/params/home_request.dart';
import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/core/usecases/usecase.dart';
import 'package:ecommerce_concept/src/domain/entities/home_store_entity.dart';
import 'package:ecommerce_concept/src/domain/repositories/home_store_repository.dart';

class FetchHomeStoreUseCase
    implements UseCase<DataState<List<HomeStoreEntity>>, HomeRequestParams> {
  FetchHomeStoreUseCase(this._homeStoreRepository);

  final HomeStoreRepository _homeStoreRepository;

  @override
  Future<DataState<List<HomeStoreEntity>>> call({required HomeRequestParams params}) {
    return _homeStoreRepository.fetchHomeStore(params);
  }
}
