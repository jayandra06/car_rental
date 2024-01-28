import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_nine_bottomsheet/models/frame_nine_model.dart';
part 'frame_nine_event.dart';
part 'frame_nine_state.dart';

/// A bloc that manages the state of a FrameNine according to the event that is dispatched to it.
class FrameNineBloc extends Bloc<FrameNineEvent, FrameNineState> {
  FrameNineBloc(FrameNineState initialState) : super(initialState) {
    on<FrameNineInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<FrameNineState> emit,
  ) {
    emit(state.copyWith(vehicleModelRadioGroup: event.value));
  }

  List<String> fillRadioList() {
    return [
      "lbl_indica",
      "lbl_tiago",
      "lbl_nexon",
      "lbl_punch",
      "lbl_hexa",
      "lbl_safari",
      "lbl_harrier",
      "lbl_altroz",
      "lbl_maruti"
    ];
  }

  _onInitialize(
    FrameNineInitialEvent event,
    Emitter<FrameNineState> emit,
  ) async {
    emit(state.copyWith(vehicleModelRadioGroup: ""));
    emit(state.copyWith(
        frameNineModelObj:
            state.frameNineModelObj?.copyWith(radioList: fillRadioList())));
  }
}
