import 'package:ecommerce_concept/src/core/utils/strings_constants.dart';
import 'package:ecommerce_concept/src/presentation/bloc/remote_home/remote_products_bloc.dart';
import 'package:ecommerce_concept/src/presentation/screens/home/home_views/build_page_home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBloc(context);
  }

  Widget _buildBloc(BuildContext context) {
    Widget loading = Scaffold(
        body: Center(
            child: CupertinoActivityIndicator(
      color: Colors.red,
    )));

    return BlocBuilder<RemoteProductsBloc, RemoteProductsState>(
        builder: (_, state) {
      if (state is RemoteProductsLoading) {
        return loading;
      }
      if (state is RemoteProductsError) {
        SchedulerBinding.instance!.addPostFrameCallback((_) {
          _pushErrorView(context, state.error.message);
        });
        return const SizedBox();
      }
      if (state is RemoteProductsDone) {
        return BuildPageHomeView(state.productEntity);
      }
      return const SizedBox();
    });
  }

  void _pushErrorView(BuildContext context, String arguments) {
    print('_pushErrorView');

    Navigator.pushReplacementNamed(context, kRouteErrorView,
        arguments: arguments);
  }
}
