import 'package:bloc/bloc.dart';
import 'package:ecommerce_concept/src/config/colors/app_colors.dart';

class PressCategoryCubit extends Cubit<List<ButtonColorsModel>> {
  PressCategoryCubit(List<ButtonColorsModel> listButtonsColors)
      : super(listButtonsColors);

  void pressCategoryMap(String name) {
    List<ButtonColorsModel> myState = state
        .map((m) => ButtonColorsModel(
            name: m.name, background: m.background, svg: m.svg))
        .toList();

    myState.forEach((e) {
      if (e.name == name) e.background = AppColors.buttonBackgroundOrange;
      if (e.name != name && e.background == AppColors.buttonBackgroundOrange)
        e.background = AppColors.buttonBackground;
    });

    emit(myState);
  }
}
