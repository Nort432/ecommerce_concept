import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ecommerce_concept/src/core/bloc/bloc_with_state.dart';
import 'package:ecommerce_concept/src/core/params/no_params.dart';
import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';
import 'package:ecommerce_concept/src/domain/usecases/fetch_products_usecase.dart';
import 'package:equatable/equatable.dart';

part 'remote_products_event.dart';
part 'remote_products_state.dart';

class RemoteProductsBloc extends BlocWithState<RemoteProductsEvent, RemoteProductsState> {
  RemoteProductsBloc(this._fetchProductsUseCase) : super(const RemoteProductsLoading());
  late final FetchProductsUseCase _fetchProductsUseCase;

  final List<ProductEntity> _products = [];

  @override
  Stream<RemoteProductsState> mapEventToState(RemoteProductsEvent event) async* {
    if(event is FetchProducts)
      yield* _fetchProductsEvent(event);
  }

  Stream<RemoteProductsState> _fetchProductsEvent(RemoteProductsEvent event) async* {
    yield* runBlocProcess(() async* {
      final DataState dataState = await _fetchProductsUseCase(NoParams());

      if (dataState is DataSuccess && dataState.data.isNotEmpty) {
        final products = dataState.data;
        _products.addAll(products);

        yield RemoteProductsDone(_products);
      }
      if (dataState is DataFailed) {
        if(dataState.error != null)
        yield RemoteProductsError(dataState.error!);
      }
    });
  }
}
