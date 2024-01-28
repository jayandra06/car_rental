import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_fourteen_container_screen/models/frame_fourteen_container_model.dart';
part 'frame_fourteen_container_event.dart';
part 'frame_fourteen_container_state.dart';

/// A bloc that manages the state of a FrameFourteenContainer according to the event that is dispatched to it.
class FrameFourteenContainerBloc
    extends Bloc<FrameFourteenContainerEvent, FrameFourteenContainerState> {
  FrameFourteenContainerBloc(FrameFourteenContainerState initialState)
      : super(initialState) {
    on<FrameFourteenContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFourteenContainerInitialEvent event,
    Emitter<FrameFourteenContainerState> emit,
  ) async {}
}
