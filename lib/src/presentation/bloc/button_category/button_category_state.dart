part of 'button_category_bloc.dart';

abstract class ButtonCategoryState extends Equatable {
  const ButtonCategoryState();
}

class ButtonCategoryLoading extends ButtonCategoryState {
  const ButtonCategoryLoading();

  @override
  List<Object?> get props => [];
}

class ButtonCategoryDone extends ButtonCategoryState {
  const ButtonCategoryDone(this.buttonColor);

  final Color buttonColor;

  @override
  List<Object> get props => [buttonColor];
}

class ButtonCategoryError extends ButtonCategoryState {
  const ButtonCategoryError({this.messageError = 'Something went wrong'});

  final String messageError;

  @override
  List<Object> get props => [messageError];
}
