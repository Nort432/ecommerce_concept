import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/core/utils/strings_constants.dart';
import 'package:ecommerce_concept/src/domain/entities/product_entity.dart';
import 'package:ecommerce_concept/src/injector.dart';
import 'package:ecommerce_concept/src/presentation/bloc/button_category/button_category_bloc.dart';
import 'package:ecommerce_concept/src/presentation/bloc/press_category/press_category_cubit.dart';
import 'package:ecommerce_concept/src/presentation/bloc/remote_home/remote_products_bloc.dart';
import 'package:ecommerce_concept/src/presentation/views/error/error_view.dart';
import 'package:ecommerce_concept/src/presentation/widgets/buttons/my_button_circle_widget.dart';
import 'package:ecommerce_concept/src/presentation/widgets/buttons/select_category_widget.dart';
import 'package:ecommerce_concept/src/presentation/widgets/texts/my_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

// extends HookWidget
class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final EdgeInsets appBarTextMargin = const EdgeInsets.only(right: 11, left: 8);
  final EdgeInsets appBarSvgPadding =
      const EdgeInsets.symmetric(horizontal: 14);

  Color colTwo = AppColors.buttonBackground;
  Color colOne = AppColors.buttonBackground;

  bool isPressed1 = false;
  bool isPressed2 = false;

  @override
  Widget build(BuildContext context) {
    // print('build');
    return _buildBloc(context);
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: GestureDetector(
        onTap: () => print('Location'),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(kSvgLocation, color: AppColors.svgOrange),
            MyTextWidget(
              text: kCurrentLocation,
              textStyle: AppSizes.font15_5(),
              margin: appBarTextMargin,
            ),
            SvgPicture.asset(kSvgArrow, color: AppColors.svgGrey),
          ],
        ),
      ),
      actions: [
        Builder(
          builder: (context) => GestureDetector(
            //onTap: () => _onShowSavedProductsViewTapped(context),
            onTap: () => print('filter'),
            child: Padding(
              padding: appBarSvgPadding,
              child: SvgPicture.asset(kSvgFilter, color: AppColors.svgDark),
            ),
          ),
        ),
      ],
    );
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
        return _buildPage(context, state.productEntity);
      }
      return const SizedBox();
    });
  }

  Widget _buildPage(BuildContext context, ProductEntity products) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(
        child: Column(
          children: [
            Image.network(products.homeStore.first.picture),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: SelectCategoryWidget()
            ),
            // BlocBuilder<PressCategoryCubit, Color>(
            //   builder: (context, newColor){
            //     print('11111');
            //     colOne = newColor;
            //     return MyButtonCircleWidget(
            //       imageSource: 'assets/icons/computer.svg',
            //       buttonColor: colOne,
            //       onTap: () {
            //         print('context 11111');
            //         //context.read<PressCategoryCubit>().pressCategoryButton(colOne);
            //         // _onTapButtonCategory(context);
            //       },
            //     );
            //   },
            // ),
            // BlocBuilder<PressCategoryCubit, Color>(
            //   builder: (context, newColor){
            //     print('2222');
            //     colTwo = newColor;
            //     return MyButtonCircleWidget(
            //       imageSource: 'assets/icons/computer.svg',
            //       buttonColor: colTwo,
            //       onTap: () {
            //         print('context 2222');
            //         //context.read<PressCategoryCubit>().pressCategoryButton2(colTwo);
            //         // _onTapButtonCategory(context);
            //       },
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  Future<void> _pushErrorView(BuildContext context, String arguments) async {
    print('_pushErrorView');

    Navigator.pushReplacementNamed(context, kRouteErrorView,
        arguments: arguments);
  }

  void _onTapButtonCategory(BuildContext context) async {
    // injector<ButtonCategoryBloc>()
    //   ..add(ButtonCategoryPress(buttonComputerColor));
    //var mod = context.read<ButtonCategoryBloc>();
    //mod.add(ButtonCategoryPress(buttonComputerColor));

    final bloc = BlocProvider.of<ButtonCategoryBloc>(context);
    bloc.add(ButtonCategoryPress(colTwo));
    //BlocProvider.of<ButtonCategoryBloc>(context).add(ButtonCategoryPress(buttonComputerColor));

    BlocListener<ButtonCategoryBloc, ButtonCategoryState>(
      listener: (context, state) {
        print('do stuff here based on Bloc');
      },
      child: Container(),
    );

    //  BlocListener<ButtonCategoryBloc, ButtonCategoryState>(
    //   //bloc: mod,
    //   listener: (context, state) {
    //     print('click');
    //     if (state is ButtonCategoryDone) {
    //       buttonComputerColor = Colors.black;
    //     } else {
    //       print('else');
    //     }
    //   },
    // );
    // BlocBuilder<ButtonCategoryBloc, ButtonCategoryState>(
    //   //bloc: mod,
    //   builder: (context, state) {
    //     print('click');
    //     if (state is ButtonCategoryDone) {
    //       buttonComputerColor = Colors.black;
    //     } else {
    //       print('else');
    //     }
    //     return SizedBox();
    //   },
    // );
    print('------------$colTwo');
  }
}
