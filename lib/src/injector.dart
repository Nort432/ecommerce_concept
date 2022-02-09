
import 'package:ecommerce_concept/src/data/datasources/remote/products_service.dart';
import 'package:ecommerce_concept/src/data/repositories/products_repository_impl.dart';
import 'package:ecommerce_concept/src/domain/repositories/products_repository.dart';
import 'package:ecommerce_concept/src/domain/usecases/fetch_products_usecase.dart';
import 'package:ecommerce_concept/src/presentation/bloc/remote_home/remote_products_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio client
  injector.registerSingleton<Dio>(Dio());

  // Dependencies
  injector.registerSingleton<ProductsService>(ProductsService(injector()));
  injector.registerSingleton<ProductsRepository>(ProductsRepositoryImpl(injector()));

  // UseCases
  injector.registerSingleton<FetchProductsUseCase>(FetchProductsUseCase(injector()));

  // BLoC
  injector.registerFactory<RemoteProductsBloc>(() => RemoteProductsBloc(fetchProductsUseCase: injector()));
}