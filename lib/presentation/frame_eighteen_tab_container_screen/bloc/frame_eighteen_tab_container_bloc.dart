import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_eighteen_tab_container_screen/models/frame_eighteen_tab_container_model.dart';
part 'frame_eighteen_tab_container_event.dart';
part 'frame_eighteen_tab_container_state.dart';

/// A bloc that manages the state of a FrameEighteenTabContainer according to the event that is dispatched to it.
class FrameEighteenTabContainerBloc extends Bloc<FrameEighteenTabContainerEvent,
    FrameEighteenTabContainerState> {
  FrameEighteenTabContainerBloc(FrameEighteenTabContainerState initialState)
      : super(initialState) {
    on<FrameEighteenTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameEighteenTabContainerInitialEvent event,
    Emitter<FrameEighteenTabContainerState> emit,
  ) async {}
}
