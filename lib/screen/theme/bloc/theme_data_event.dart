part of 'theme_data_bloc.dart';

abstract class ThemeDataEvent extends BaseEquatable {}

class LoadThemeEvent extends ThemeDataEvent {}

class ChangeThemeEvent extends ThemeDataEvent {
  final String themeName;

  ChangeThemeEvent({required this.themeName});
}
