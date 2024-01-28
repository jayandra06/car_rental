import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_seventeen_screen/models/frame_seventeen_model.dart';
part 'frame_seventeen_event.dart';
part 'frame_seventeen_state.dart';

/// A bloc that manages the state of a FrameSeventeen according to the event that is dispatched to it.
class FrameSeventeenBloc
    extends Bloc<FrameSeventeenEvent, FrameSeventeenState> {
  FrameSeventeenBloc(FrameSeventeenState initialState) : super(initialState) {
    on<FrameSeventeenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameSeventeenInitialEvent event,
    Emitter<FrameSeventeenState> emit,
  ) async {
    emit(state.copyWith(
      dateController: TextEditingController(),
    ));
  }
}
