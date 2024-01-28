import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:rofyt/presentation/frame_eight_screen/models/frame_eight_model.dart';
part 'frame_eight_event.dart';
part 'frame_eight_state.dart';

/// A bloc that manages the state of a FrameEight according to the event that is dispatched to it.
class FrameEightBloc extends Bloc<FrameEightEvent, FrameEightState> {
  FrameEightBloc(FrameEightState initialState) : super(initialState) {
    on<FrameEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameEightInitialEvent event,
    Emitter<FrameEightState> emit,
  ) async {
    emit(state.copyWith(
        frameEightModelObj: state.frameEightModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          carName: "MARUTI sUZUKI",
          carModel: "sWIFT vDI",
          hourlyRate: "₹160/hr",
          vehicleNumber: "Veh.No :   WB 21 DV 1264",
          insuranceLabel: "Insurance",
          registrationLabel: "Registration",
          supportLabel: "Support",
          additionalLabel: "Additional"),
      UserprofileItemModel(
          carName: "MARUTI sUZUKI",
          carModel: "sWIFT vDI",
          hourlyRate: "₹160/hr",
          vehicleNumber: "Veh.No :   WB 21 DV 1264",
          insuranceLabel: "Insurance",
          registrationLabel: "Registration",
          supportLabel: "Support",
          additionalLabel: "Additional")
    ];
  }
}
