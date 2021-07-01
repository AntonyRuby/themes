import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_data_event.dart';
part 'theme_data_state.dart';

class ThemeDataBloc extends Bloc<ThemeDataEvent, ThemeDataState> {
  ThemeData currentTheme = ThemeData.light();

  ThemeDataBloc() : super(ThemeDataInitial());

  @override
  Stream<ThemeDataState> mapEventToState(
    ThemeDataEvent event,
  ) async* {}
}
