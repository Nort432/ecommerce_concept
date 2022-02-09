import 'dart:ui';

import 'package:equatable/equatable.dart';

class ButtonCircleModel extends Equatable {
  ButtonCircleModel(
      {required this.name,
        required this.backgroundColor,
        required this.nameColor,
        required this.svgSource,
        required this.svgColor
      });

  late String name;
  late Color backgroundColor;
  late Color svgColor;
  late Color nameColor;
  late String svgSource;

  @override
  List<Object?> get props => [name, backgroundColor, svgColor, nameColor];
}
