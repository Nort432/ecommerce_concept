import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ecommerce_concept/src/core/params/no_params.dart';
import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';
import 'package:ecommerce_concept/src/domain/usecases/fetch_products_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'remote_products_event.dart';

part 'remote_products_state.dart';

class RemoteProductsBloc
    extends Bloc<RemoteProductsEvent, RemoteProductsState> {
  RemoteProductsBloc({required this.fetchProductsUseCase})
      : super(const RemoteProductsLoading()) {
    on<FetchProducts>(_onProductsFetched);
  }

  final FetchProductsUseCase fetchProductsUseCase;

  late final ProductEntity products;

  Future<void> _onProductsFetched(
    FetchProducts event,
    Emitter<RemoteProductsState> emit,
  ) async {
    final DataState dataState = await fetchProductsUseCase(NoParams());

    if (dataState is DataSuccess && dataState.data != null) {
      products = dataState.data as ProductEntity;

      return emit(RemoteProductsDone(products));
    }

    if (dataState is DataFailed) {
      if (dataState.error != null)
        return emit(RemoteProductsError(dataState.error!));
    }
  }

//#region old code

// @override
// Stream<RemoteProductsState> mapEventToState(RemoteProductsEvent event) async* {
//   if(event is FetchProducts)
//     yield* _fetchProductsEvent(event);
// }

// Stream<RemoteProductsState> _fetchProductsEvent(
//     RemoteProductsEvent event) async* {
//   yield* runBlocProcess(() async* {
//     final DataState dataState = await fetchProductsUseCase(NoParams());
//
//     if (dataState is DataSuccess && dataState.data.isNotEmpty) {
//       _products = dataState.data;
//
//       yield RemoteProductsDone(_products);
//     }
//     if (dataState is DataFailed) {
//       if (dataState.error != null)
//         yield RemoteProductsError(dataState.error!);
//     }
//   });
// }

//#end region
}
