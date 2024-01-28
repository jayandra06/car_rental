import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/owner_dashboard_in_transit_page/models/owner_dashboard_in_transit_model.dart';
part 'owner_dashboard_in_transit_event.dart';
part 'owner_dashboard_in_transit_state.dart';

/// A bloc that manages the state of a OwnerDashboardInTransit according to the event that is dispatched to it.
class OwnerDashboardInTransitBloc
    extends Bloc<OwnerDashboardInTransitEvent, OwnerDashboardInTransitState> {
  OwnerDashboardInTransitBloc(OwnerDashboardInTransitState initialState)
      : super(initialState) {
    on<OwnerDashboardInTransitInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OwnerDashboardInTransitInitialEvent event,
    Emitter<OwnerDashboardInTransitState> emit,
  ) async {}
}
