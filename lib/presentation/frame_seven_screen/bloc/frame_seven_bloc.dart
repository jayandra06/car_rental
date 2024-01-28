import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_seven_screen/models/frame_seven_model.dart';
part 'frame_seven_event.dart';
part 'frame_seven_state.dart';

/// A bloc that manages the state of a FrameSeven according to the event that is dispatched to it.
class FrameSevenBloc extends Bloc<FrameSevenEvent, FrameSevenState> {
  FrameSevenBloc(FrameSevenState initialState) : super(initialState) {
    on<FrameSevenInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<FrameSevenState> emit,
  ) {
    emit(state.copyWith(
      iAgreeOne: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<FrameSevenState> emit,
  ) {
    emit(state.copyWith(
      iAgreeOne1: event.value,
    ));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<FrameSevenState> emit,
  ) {
    emit(state.copyWith(
      checkbox: event.value,
    ));
  }

  _onInitialize(
    FrameSevenInitialEvent event,
    Emitter<FrameSevenState> emit,
  ) async {
    emit(state.copyWith(
      iAgreeOne: false,
      iAgreeOne1: false,
      checkbox: false,
    ));
  }
}
