import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/routes/app_routes.dart';
import 'package:ecommerce_concept/src/config/themes/app_theme.dart';
import 'package:ecommerce_concept/src/core/utils/strings_constants.dart';
import 'package:ecommerce_concept/src/injector.dart';
import 'package:ecommerce_concept/src/presentation/bloc/press_category/press_category_cubit.dart';
import 'package:ecommerce_concept/src/presentation/bloc/remote_home/remote_products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RemoteProductsBloc>(
            create: (context) => injector()..add(const FetchProducts())),
        BlocProvider<PressCategoryCubit>(
          create: (context) => PressCategoryCubit(AppTheme.listButtons)),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: kSplash,
        onGenerateRoute: AppRoutes.onGenerateRoutes,
        initialRoute: kRouteHomeView,
        theme: AppTheme.light,
      ),
    );
  }
}

Widget going(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: kSplash,
    // onGenerateRoute: AppRoutes.onGenerateRoutes,
    // theme: AppTheme.light,
    home: SafeArea(
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 11,
                width: MediaQuery.of(context).size.height / 11,
                padding: const EdgeInsets.all(15),
                color: Colors.white,
                child: SvgPicture.asset('assets/icons/headphones.svg'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              color: Colors.white,
              child: SvgPicture.asset('assets/icons/books.svg'),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              color: Colors.black,
              child: myCircular(),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget myText({
  required String text,
  FontWeight? weight,
  double? size,
  String? family,
}) {
  // const FontWeight? weight = FontWeight.w500;
  return Text(
    text,
    style: TextStyle(
      fontWeight: weight,
      fontSize: size,
      fontFamily: family,
    ),
  );
}

Widget myCircular() {
  return Container(
      height: 10,
      width: 10,
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle));
}
