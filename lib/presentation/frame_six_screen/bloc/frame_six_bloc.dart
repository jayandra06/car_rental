import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_six_screen/models/frame_six_model.dart';
part 'frame_six_event.dart';
part 'frame_six_state.dart';

/// A bloc that manages the state of a FrameSix according to the event that is dispatched to it.
class FrameSixBloc extends Bloc<FrameSixEvent, FrameSixState> {
  FrameSixBloc(FrameSixState initialState) : super(initialState) {
    on<FrameSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameSixInitialEvent event,
    Emitter<FrameSixState> emit,
  ) async {}
}
