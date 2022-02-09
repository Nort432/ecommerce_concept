import 'package:bloc/bloc.dart';
import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/data/models/button_colors_model.dart';

class PressCategoryCubit extends Cubit<List<ButtonCircleModel>> {
  PressCategoryCubit(List<ButtonCircleModel> listButtonsColors)
      : super(listButtonsColors);

  void pressCategoryButtons(String name) {
    List<ButtonCircleModel> myState = state
        .map((m) => ButtonCircleModel(
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
