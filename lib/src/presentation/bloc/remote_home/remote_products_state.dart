part of 'remote_products_bloc.dart';

abstract class RemoteProductsState extends Equatable {
  const RemoteProductsState();
}

class RemoteProductsLoading extends RemoteProductsState {
  const RemoteProductsLoading();

  @override
  List<Object?> get props => [];
}

class RemoteProductsDone extends RemoteProductsState {
  const RemoteProductsDone(this.productEntity);

  final ProductEntity productEntity;

  @override
  List<Object> get props => [productEntity];
}

class RemoteProductsError extends RemoteProductsState {
  const RemoteProductsError(this.error);
  final DioError error;

  @override
  List<Object> get props => [error];
}
