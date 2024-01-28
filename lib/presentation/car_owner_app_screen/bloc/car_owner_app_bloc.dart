import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/car_owner_app_screen/models/car_owner_app_model.dart';
part 'car_owner_app_event.dart';
part 'car_owner_app_state.dart';

/// A bloc that manages the state of a CarOwnerApp according to the event that is dispatched to it.
class CarOwnerAppBloc extends Bloc<CarOwnerAppEvent, CarOwnerAppState> {
  CarOwnerAppBloc(CarOwnerAppState initialState) : super(initialState) {
    on<CarOwnerAppInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CarOwnerAppInitialEvent event,
    Emitter<CarOwnerAppState> emit,
  ) async {}
}
