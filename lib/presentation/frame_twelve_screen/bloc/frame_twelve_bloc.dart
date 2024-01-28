import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_twelve_screen/models/frame_twelve_model.dart';
part 'frame_twelve_event.dart';
part 'frame_twelve_state.dart';

/// A bloc that manages the state of a FrameTwelve according to the event that is dispatched to it.
class FrameTwelveBloc extends Bloc<FrameTwelveEvent, FrameTwelveState> {
  FrameTwelveBloc(FrameTwelveState initialState) : super(initialState) {
    on<FrameTwelveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwelveInitialEvent event,
    Emitter<FrameTwelveState> emit,
  ) async {}
}
