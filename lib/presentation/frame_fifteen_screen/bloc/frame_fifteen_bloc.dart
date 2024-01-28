import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/vehicledetailslist_item_model.dart';
import 'package:rofyt/presentation/frame_fifteen_screen/models/frame_fifteen_model.dart';
part 'frame_fifteen_event.dart';
part 'frame_fifteen_state.dart';

/// A bloc that manages the state of a FrameFifteen according to the event that is dispatched to it.
class FrameFifteenBloc extends Bloc<FrameFifteenEvent, FrameFifteenState> {
  FrameFifteenBloc(FrameFifteenState initialState) : super(initialState) {
    on<FrameFifteenInitialEvent>(_onInitialize);
  }

  List<VehicledetailslistItemModel> fillVehicledetailslistItemList() {
    return [
      VehicledetailslistItemModel(
          vehicleCounter: "Vehicle 1",
          label: "Plate Number",
          plateNumber: "wb58ax1264",
          make: "Make: sandip",
          label1: "|",
          type: "Type: ",
          insurance: "Insurance",
          registration: "Registration",
          mot: "MOT",
          file: ImageConstant.imgFileBlack900,
          additional: "Additional"),
      VehicledetailslistItemModel(
          vehicleCounter: "Vehicle 2",
          label: "Plate Number",
          plateNumber: "wb58ax1264",
          make: "Make: sandip",
          label1: "|",
          insurance: "Insurance",
          registration: "Registration",
          mot: "MOT")
    ];
  }

  _onInitialize(
    FrameFifteenInitialEvent event,
    Emitter<FrameFifteenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        frameFifteenModelObj: state.frameFifteenModelObj?.copyWith(
      vehicledetailslistItemList: fillVehicledetailslistItemList(),
    )));
  }
}
