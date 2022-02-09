import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/presentation/widgets/texts/my_text_event_widget.dart';
import 'package:ecommerce_concept/src/presentation/widgets/texts/my_text_widget.dart';
import 'package:flutter/material.dart';

class HeaderHomeView extends StatelessWidget {
  const HeaderHomeView(
      {required this.padding,
      required this.textButton,
      required this.text,
      Key? key})
      : super(key: key);

  final EdgeInsets padding;
  final String text;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextWidget(text: text, textStyle: AppSizes.font25_7()),
          MyTextEventWidget(
              text: textButton,
              textStyle: AppSizes.font15_4(),
              onTap: () => print(textButton)),
        ],
      ),
    );
  }
}
