// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';

// import '../../themes_setup.dart';

// part 'themes_event.dart';
// part 'themes_state.dart';

// class ThemesBloc extends Bloc<ThemesEvent, ThemesState> {
//   ThemesBloc()
//       : super(ThemesInitialState(
//             themeData: AppThemes.appThemeData[AppTheme.lightTheme]));

//   @override
//   Stream<ThemesState> mapEventToState(
//     ThemesEvent event,
//   ) async* {
//     if (event is ThemesInitialEvent) {
//       yield ThemesInitialState(
//         themeData: AppThemes.appThemeData[event.apptheme],
//       );
//     }
//   }
// }
