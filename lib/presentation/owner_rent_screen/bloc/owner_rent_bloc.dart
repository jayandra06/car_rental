import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/owner_rent_screen/models/owner_rent_model.dart';
part 'owner_rent_event.dart';
part 'owner_rent_state.dart';

/// A bloc that manages the state of a OwnerRent according to the event that is dispatched to it.
class OwnerRentBloc extends Bloc<OwnerRentEvent, OwnerRentState> {
  OwnerRentBloc(OwnerRentState initialState) : super(initialState) {
    on<OwnerRentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OwnerRentInitialEvent event,
    Emitter<OwnerRentState> emit,
  ) async {}
}
