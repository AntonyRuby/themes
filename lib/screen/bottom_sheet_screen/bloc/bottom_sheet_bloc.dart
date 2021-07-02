import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_sheet_event.dart';
part 'bottom_sheet_state.dart';

class BottomSheetBloc extends Bloc<BottomSheetEvent, BottomSheetState> {
  BottomSheetBloc() : super(BottomSheetInitial());

  @override
  Stream<BottomSheetState> mapEventToState(
    BottomSheetEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
