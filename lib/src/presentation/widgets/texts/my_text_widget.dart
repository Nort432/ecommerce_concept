import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({
    Key? key,
    required this.text,
    required this.textStyle,
    this.margin,
  }) : super(key: key);

  final String text;
  final TextStyle? textStyle;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        text,
      style: textStyle,),
    );
  }
}
