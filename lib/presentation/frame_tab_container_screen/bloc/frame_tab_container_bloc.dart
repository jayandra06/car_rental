import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_tab_container_screen/models/frame_tab_container_model.dart';
part 'frame_tab_container_event.dart';
part 'frame_tab_container_state.dart';

/// A bloc that manages the state of a FrameTabContainer according to the event that is dispatched to it.
class FrameTabContainerBloc
    extends Bloc<FrameTabContainerEvent, FrameTabContainerState> {
  FrameTabContainerBloc(FrameTabContainerState initialState)
      : super(initialState) {
    on<FrameTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTabContainerInitialEvent event,
    Emitter<FrameTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
