import 'package:bloc/bloc.dart';
import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/domain/entities/button_colors_entity.dart';

class PressCategoryCubit extends Cubit<List<ButtonCircleEntity>> {
  PressCategoryCubit(List<ButtonCircleEntity> listButtonsColors)
      : super(listButtonsColors);

  void pressCategoryButtons(String name) {
    List<ButtonCircleEntity> myState = state
        .map((m) => ButtonCircleEntity(
            name: m.name,
            svgSource: m.svgSource,
            nameColor: m.nameColor,
            backgroundColor: m.backgroundColor,
            svgColor: m.svgColor))
        .toList();

    myState.forEach((e) {
      if (e.name == name) {
        e.backgroundColor = AppColors.buttonBackgroundOrange;
        e.svgColor = AppColors.svgWhite;
        e.nameColor = AppColors.textOrange;
      }
      if (e.name != name && e.backgroundColor == AppColors.buttonBackgroundOrange) {
        e.backgroundColor = AppColors.buttonBackground;
        e.svgColor = AppColors.svgGrey;
        e.nameColor = AppColors.text;
      }
    });

    emit(myState);
  }
}
