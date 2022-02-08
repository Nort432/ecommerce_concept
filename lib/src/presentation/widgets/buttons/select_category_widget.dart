import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/core/utils/strings_constants.dart';
import 'package:ecommerce_concept/src/presentation/bloc/press_category/press_category_cubit.dart';
import 'package:ecommerce_concept/src/presentation/widgets/buttons/my_button_circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectCategoryWidget extends StatelessWidget {
  SelectCategoryWidget({Key? key}) : super(key: key);

  // Map<String, Color> mapColors = {
  //   kPhones: AppColors.buttonBackground,
  //   kComputer: AppColors.buttonBackground,
  //   kHealth: AppColors.buttonBackground,
  //   kBooks: AppColors.buttonBackground,
  //   kHeadphones: AppColors.buttonBackground,
  // };

  @override
  Widget build(BuildContext context) {
    print('build');
    // print( mapColors[kPhones]);
    // Color? color = mapColors[kPhones];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: BlocBuilder<PressCategoryCubit, List<ButtonColorsModel>>(
          builder: (context, state) {
            print('button build');
        // print("BlocBuilder = ${state.listButtonsColors.first.background}");
        // List<ButtonColorsModel> newState = state.listButtonsColors;
        return Row(
          children: [
            MyButtonCircleWidget(
              imageSource: kSvgPhone,
              buttonColor: state[0].background,
              // svgColor: newState[0].svg,
              onTap: () => context
                  .read<PressCategoryCubit>()
                  .pressCategoryMap(state[0].name),
            ),
            MyButtonCircleWidget(
              imageSource: kSvgComputer,
              buttonColor: state[1].background,
              // svgColor: newState[1].svg,
              onTap: () => context
                  .read<PressCategoryCubit>()
                  .pressCategoryMap(state[1].name),
            ),
          ],
        );
      }),
    );
  }

// void pressButton(BuildContext context, String name) {
//   context.read<PressCategoryCubit>().pressCategoryMap(name);//
// }

// Future<Color> takeColor(String name) async{
//   // late Color color;
//   //  mapColors.forEach((key, value) {
//   //   if(key == name)
//   //     color = value;
//   // });
//   // return color;
//
//   await for(var item in mapColors{
//
//   }
//
// }
}
