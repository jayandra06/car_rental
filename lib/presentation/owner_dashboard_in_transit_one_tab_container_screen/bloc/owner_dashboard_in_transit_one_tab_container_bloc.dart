import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/owner_dashboard_in_transit_one_tab_container_screen/models/owner_dashboard_in_transit_one_tab_container_model.dart';
part 'owner_dashboard_in_transit_one_tab_container_event.dart';
part 'owner_dashboard_in_transit_one_tab_container_state.dart';

/// A bloc that manages the state of a OwnerDashboardInTransitOneTabContainer according to the event that is dispatched to it.
class OwnerDashboardInTransitOneTabContainerBloc extends Bloc<
    OwnerDashboardInTransitOneTabContainerEvent,
    OwnerDashboardInTransitOneTabContainerState> {
  OwnerDashboardInTransitOneTabContainerBloc(
      OwnerDashboardInTransitOneTabContainerState initialState)
      : super(initialState) {
    on<OwnerDashboardInTransitOneTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OwnerDashboardInTransitOneTabContainerInitialEvent event,
    Emitter<OwnerDashboardInTransitOneTabContainerState> emit,
  ) async {}
}
