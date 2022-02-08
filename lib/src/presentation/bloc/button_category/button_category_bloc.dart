import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/core/params/no_params.dart';
import 'package:ecommerce_concept/src/core/resources/data_state.dart';
import 'package:ecommerce_concept/src/domain/usecases/button_category_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'button_category_event.dart';

part 'button_category_state.dart';

class ButtonCategoryBloc
    extends Bloc<ButtonCategoryEvent, ButtonCategoryState> {
  ButtonCategoryBloc(this._buttonCategoryUseCase)
      : super(ButtonCategoryLoading()) {
    on<ButtonCategoryPress>(_onButtonCategory);
  }

  final ButtonCategoryUseCase? _buttonCategoryUseCase;

  Future<void> _onButtonCategory(
      ButtonCategoryPress event, Emitter<ButtonCategoryState> emit) async {
    //DataState dataState = await _buttonCategoryUseCase(NoParams());
    DataState dataState;

    if (event.buttonColor == AppColors.buttonBackground) {
      dataState = DataSuccess(AppColors.buttonBackgroundOrange);
    } else {
      dataState = DataSuccess(AppColors.buttonBackground);
    }

    print('ButtonCategoryBloc    ' + dataState.data.toString());

    if (dataState.data != null) {
      return emit(ButtonCategoryDone(dataState.data));
    }
    else {
      return emit(ButtonCategoryError(messageError: 'dataState is null'));
    }
  }
}
