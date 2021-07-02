import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:themes/utils/base_equatable.dart';
import 'package:themes/widget/custom_theme.dart';
part 'theme_data_event.dart';
part 'theme_data_state.dart';

class ThemeDataBloc extends Bloc<ThemeDataEvent, ThemeDataState> {
  ThemeData currentThemeData = CustomTheme.defaultTheme;
  SharedPreferences? preferences;

  ThemeDataBloc() : super(ThemeDataInitialState());

  Future getPreferences() async {
    preferences = await SharedPreferences.getInstance();
    String? theme = preferences!.getString('theme');
    print("Loading user theme: $theme");
    return CustomTheme.themes[theme] ?? CustomTheme.defaultTheme;
  }

  Future setPreferences(String theme) async {
    preferences = await SharedPreferences.getInstance();
    preferences?.setString('theme', theme);
    print("Saved user theme as $theme");
  }

  @override
  Stream<ThemeDataState> mapEventToState(
    ThemeDataEvent event,
  ) async* {
    // Loadinitial theme from shared preferences
    if (event is LoadThemeEvent) {
      currentThemeData = await getPreferences();
      yield ChangeThemeState();
    }
    // Handle theme changes
    else if (event is ChangeThemeEvent) {
      currentThemeData =
          CustomTheme.themes[event.themeName] ?? CustomTheme.defaultTheme;
      setPreferences(event.themeName);
      yield ChangeThemeState();
    }
  }
}
