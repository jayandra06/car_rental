import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/owner_dashboard_in_transit_one_page/models/owner_dashboard_in_transit_one_model.dart';
part 'owner_dashboard_in_transit_one_event.dart';
part 'owner_dashboard_in_transit_one_state.dart';

/// A bloc that manages the state of a OwnerDashboardInTransitOne according to the event that is dispatched to it.
class OwnerDashboardInTransitOneBloc extends Bloc<
    OwnerDashboardInTransitOneEvent, OwnerDashboardInTransitOneState> {
  OwnerDashboardInTransitOneBloc(OwnerDashboardInTransitOneState initialState)
      : super(initialState) {
    on<OwnerDashboardInTransitOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OwnerDashboardInTransitOneInitialEvent event,
    Emitter<OwnerDashboardInTransitOneState> emit,
  ) async {}
}
