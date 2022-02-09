import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/presentation/widgets/buttons/my_button_circle_widget.dart';
import 'package:ecommerce_concept/src/presentation/widgets/texts/my_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String messageError =
        ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyTextWidget(text: messageError, textStyle: AppSizes.font25_7()),
            GestureDetector(
              onTap: () => print('refresh'),
              child: Icon(CupertinoIcons.arrow_clockwise),
            ),
          ],
        )),
      );
  }
}
