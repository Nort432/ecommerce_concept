import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/core/utils/strings_constants.dart';
import 'package:ecommerce_concept/src/data/models/button_colors_model.dart';
import 'package:ecommerce_concept/src/presentation/bloc/press_category/press_category_cubit.dart';
import 'package:ecommerce_concept/src/presentation/widgets/buttons/my_button_circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopButtonsHomeView extends StatelessWidget {
  TopButtonsHomeView({Key? key}) : super(key: key);

  int phoneId = 0;
  int computerId = 1;
  int healthId = 2;
  int booksId = 3;
  int headphonesId = 4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.buttonsAllPadding,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: BlocBuilder<PressCategoryCubit, List<ButtonCircleModel>>(
            builder: (context, state) {
          return Row(
            children: [

              SizedBox(width: AppSizes.buttonsAllSizedBox),

              MyButtonCircleWidget(
                padding: AppSizes.buttonAndTextCirclePadding,
                imageSource: state[phoneId].svgSource,
                name: state[phoneId].name,
                nameColor: state[phoneId].nameColor,
                buttonColor: state[phoneId].backgroundColor,
                svgColor: state[phoneId].svgColor,
                onTap: () => context
                    .read<PressCategoryCubit>()
                    .pressCategoryButtons(state[phoneId].name),
              ),

              MyButtonCircleWidget(
                padding: AppSizes.buttonAndTextCirclePadding,
                imageSource: state[computerId].svgSource,
                name: state[computerId].name,
                nameColor: state[computerId].nameColor,
                buttonColor: state[computerId].backgroundColor,
                svgColor: state[computerId].svgColor,
                onTap: () => context
                    .read<PressCategoryCubit>()
                    .pressCategoryButtons(state[computerId].name),
              ),

              MyButtonCircleWidget(
                padding: AppSizes.buttonAndTextCirclePadding,
                imageSource: state[healthId].svgSource,
                name: state[healthId].name,
                nameColor: state[healthId].nameColor,
                buttonColor: state[healthId].backgroundColor,
                svgColor: state[healthId].svgColor,
                onTap: () => context
                    .read<PressCategoryCubit>()
                    .pressCategoryButtons(state[healthId].name),
              ),

              MyButtonCircleWidget(
                padding: AppSizes.buttonAndTextCirclePadding,
                imageSource: state[booksId].svgSource,
                name: state[booksId].name,
                nameColor: state[booksId].nameColor,
                buttonColor: state[booksId].backgroundColor,
                svgColor: state[booksId].svgColor,
                onTap: () => context
                    .read<PressCategoryCubit>()
                    .pressCategoryButtons(state[booksId].name),
              ),

              MyButtonCircleWidget(
                padding: AppSizes.buttonAndTextCirclePadding,
                imageSource: state[headphonesId].svgSource,
                name: state[headphonesId].name,
                nameColor: state[headphonesId].nameColor,
                buttonColor: state[headphonesId].backgroundColor,
                svgColor: state[headphonesId].svgColor,
                onTap: () => context
                    .read<PressCategoryCubit>()
                    .pressCategoryButtons(state[headphonesId].name),
              ),

            ],
          );
        }),
      ),
    );
  }
}
