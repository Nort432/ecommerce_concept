part of 'remote_products_bloc.dart';

abstract class RemoteProductsEvent extends Equatable {
  const RemoteProductsEvent();

  @override
  List<Object> get props => [];
}

class FetchProducts extends RemoteProductsEvent {
  const FetchProducts();
}
