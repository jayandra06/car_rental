import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/vehicleinfoinsurancecertificate_item_model.dart';
import 'package:rofyt/presentation/frame_four_screen/models/frame_four_model.dart';
part 'frame_four_event.dart';
part 'frame_four_state.dart';

/// A bloc that manages the state of a FrameFour according to the event that is dispatched to it.
class FrameFourBloc extends Bloc<FrameFourEvent, FrameFourState> {
  FrameFourBloc(FrameFourState initialState) : super(initialState) {
    on<FrameFourInitialEvent>(_onInitialize);
  }

  List<VehicleinfoinsurancecertificateItemModel>
      fillVehicleinfoinsurancecertificateItemList() {
    return [
      VehicleinfoinsurancecertificateItemModel(
          insuranceCertificateText: "Insurance Certificate"),
      VehicleinfoinsurancecertificateItemModel(
          insuranceCertificateText: "Registration Certificate"),
      VehicleinfoinsurancecertificateItemModel(
          insuranceCertificateText: "MOT Certificate"),
      VehicleinfoinsurancecertificateItemModel(
          insuranceCertificateText: "Additional Document")
    ];
  }

  _onInitialize(
    FrameFourInitialEvent event,
    Emitter<FrameFourState> emit,
  ) async {
    emit(state.copyWith(
      vehicleInfoEmailController: TextEditingController(),
      vehicleInfoPasswordController: TextEditingController(),
      vehicleInfoPasswordController1: TextEditingController(),
    ));
    emit(state.copyWith(
        frameFourModelObj: state.frameFourModelObj?.copyWith(
      vehicleinfoinsurancecertificateItemList:
          fillVehicleinfoinsurancecertificateItemList(),
    )));
  }
}
