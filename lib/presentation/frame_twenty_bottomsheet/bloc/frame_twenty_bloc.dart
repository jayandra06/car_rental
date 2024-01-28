import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_twenty_bottomsheet/models/frame_twenty_model.dart';
part 'frame_twenty_event.dart';
part 'frame_twenty_state.dart';

/// A bloc that manages the state of a FrameTwenty according to the event that is dispatched to it.
class FrameTwentyBloc extends Bloc<FrameTwentyEvent, FrameTwentyState> {
  FrameTwentyBloc(FrameTwentyState initialState) : super(initialState) {
    on<FrameTwentyInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<FrameTwentyState> emit,
  ) {
    emit(state.copyWith(vehicleMakeRadioGroup: event.value));
  }

  List<String> fillRadioList() {
    return [
      "lbl_tata",
      "lbl_renault",
      "lbl_kia",
      "lbl_force",
      "lbl_scoda",
      "lbl_mahindra",
      "lbl_hyundai",
      "lbl_chevrolet",
      "lbl_maruti"
    ];
  }

  _onInitialize(
    FrameTwentyInitialEvent event,
    Emitter<FrameTwentyState> emit,
  ) async {
    emit(state.copyWith(vehicleMakeRadioGroup: ""));
    emit(state.copyWith(
        frameTwentyModelObj:
            state.frameTwentyModelObj?.copyWith(radioList: fillRadioList())));
  }
}
