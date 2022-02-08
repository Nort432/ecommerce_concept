part of 'button_category_bloc.dart';

abstract class ButtonCategoryEvent extends Equatable {
  const ButtonCategoryEvent();

  @override
  List<Object?> get props => [];
}

class ButtonCategoryPress extends ButtonCategoryEvent {
  const ButtonCategoryPress(this.buttonColor);

  final Color buttonColor;
}
