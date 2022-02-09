import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:flutter/material.dart';

class MyTextEventWidget extends StatelessWidget {
  const MyTextEventWidget({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.onTap,
    this.margin,
  }) : super(key: key);

  final String text;
  final TextStyle? textStyle;
  final EdgeInsets? margin;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        child: Text(
          text,
          style: textStyle,),
      ),
    );
  }
}
