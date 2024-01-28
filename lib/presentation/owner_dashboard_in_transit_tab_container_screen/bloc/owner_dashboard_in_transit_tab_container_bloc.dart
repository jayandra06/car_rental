import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/owner_dashboard_in_transit_tab_container_screen/models/owner_dashboard_in_transit_tab_container_model.dart';
part 'owner_dashboard_in_transit_tab_container_event.dart';
part 'owner_dashboard_in_transit_tab_container_state.dart';

/// A bloc that manages the state of a OwnerDashboardInTransitTabContainer according to the event that is dispatched to it.
class OwnerDashboardInTransitTabContainerBloc extends Bloc<
    OwnerDashboardInTransitTabContainerEvent,
    OwnerDashboardInTransitTabContainerState> {
  OwnerDashboardInTransitTabContainerBloc(
      OwnerDashboardInTransitTabContainerState initialState)
      : super(initialState) {
    on<OwnerDashboardInTransitTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OwnerDashboardInTransitTabContainerInitialEvent event,
    Emitter<OwnerDashboardInTransitTabContainerState> emit,
  ) async {}
}
