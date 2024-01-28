import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame_item_model.dart';
import 'package:rofyt/presentation/frame_fourteen_page/models/frame_fourteen_model.dart';
part 'frame_fourteen_event.dart';
part 'frame_fourteen_state.dart';

/// A bloc that manages the state of a FrameFourteen according to the event that is dispatched to it.
class FrameFourteenBloc extends Bloc<FrameFourteenEvent, FrameFourteenState> {
  FrameFourteenBloc(FrameFourteenState initialState) : super(initialState) {
    on<FrameFourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFourteenInitialEvent event,
    Emitter<FrameFourteenState> emit,
  ) async {
    emit(state.copyWith(
        frameFourteenModelObj: state.frameFourteenModelObj?.copyWith(
      frameItemList: fillFrameItemList(),
    )));
  }

  List<FrameItemModel> fillFrameItemList() {
    return [
      FrameItemModel(labelText1: "100", labelText2: "Complete Trips"),
      FrameItemModel(labelText1: "1145.5", labelText2: "Kilometers"),
      FrameItemModel(labelText1: "23 h 23 m", labelText2: "Driving Left")
    ];
  }
}
