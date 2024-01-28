import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_two_screen/models/frame_two_model.dart';
part 'frame_two_event.dart';
part 'frame_two_state.dart';

/// A bloc that manages the state of a FrameTwo according to the event that is dispatched to it.
class FrameTwoBloc extends Bloc<FrameTwoEvent, FrameTwoState> {
  FrameTwoBloc(FrameTwoState initialState) : super(initialState) {
    on<FrameTwoInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<FrameTwoState> emit,
  ) {
    emit(state.copyWith(
      checkmark: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<FrameTwoState> emit,
  ) {
    emit(state.copyWith(
      rc: event.value,
    ));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<FrameTwoState> emit,
  ) {
    emit(state.copyWith(
      cBook: event.value,
    ));
  }

  _onInitialize(
    FrameTwoInitialEvent event,
    Emitter<FrameTwoState> emit,
  ) async {
    emit(state.copyWith(
      checkmark: false,
      rc: false,
      cBook: false,
    ));
  }
}
