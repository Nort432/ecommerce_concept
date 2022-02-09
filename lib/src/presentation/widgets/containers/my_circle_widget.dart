import 'package:flutter/material.dart';

class MyCircleWidget extends StatelessWidget {
  const MyCircleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
          color: Colors.white, shape: BoxShape.circle),
    );
  }
}
