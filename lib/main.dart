import 'package:ecommerce_concept/src/core/utils/strings_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
