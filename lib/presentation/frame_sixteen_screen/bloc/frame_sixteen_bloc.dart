import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_sixteen_screen/models/frame_sixteen_model.dart';
part 'frame_sixteen_event.dart';
part 'frame_sixteen_state.dart';

/// A bloc that manages the state of a FrameSixteen according to the event that is dispatched to it.
class FrameSixteenBloc extends Bloc<FrameSixteenEvent, FrameSixteenState> {
  FrameSixteenBloc(FrameSixteenState initialState) : super(initialState) {
    on<FrameSixteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameSixteenInitialEvent event,
    Emitter<FrameSixteenState> emit,
  ) async {}
}
