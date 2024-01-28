import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_eleven_screen/models/frame_eleven_model.dart';
part 'frame_eleven_event.dart';
part 'frame_eleven_state.dart';

/// A bloc that manages the state of a FrameEleven according to the event that is dispatched to it.
class FrameElevenBloc extends Bloc<FrameElevenEvent, FrameElevenState> {
  FrameElevenBloc(FrameElevenState initialState) : super(initialState) {
    on<FrameElevenInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<FrameElevenState> emit,
  ) {
    emit(state.copyWith(
      front: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<FrameElevenState> emit,
  ) {
    emit(state.copyWith(
      back: event.value,
    ));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<FrameElevenState> emit,
  ) {
    emit(state.copyWith(
      rightSide: event.value,
    ));
  }

  _onInitialize(
    FrameElevenInitialEvent event,
    Emitter<FrameElevenState> emit,
  ) async {
    emit(state.copyWith(
      front: false,
      back: false,
      rightSide: false,
    ));
  }
}
