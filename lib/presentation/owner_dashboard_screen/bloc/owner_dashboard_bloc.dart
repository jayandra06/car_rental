import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/owner_dashboard_screen/models/owner_dashboard_model.dart';
part 'owner_dashboard_event.dart';
part 'owner_dashboard_state.dart';

/// A bloc that manages the state of a OwnerDashboard according to the event that is dispatched to it.
class OwnerDashboardBloc
    extends Bloc<OwnerDashboardEvent, OwnerDashboardState> {
  OwnerDashboardBloc(OwnerDashboardState initialState) : super(initialState) {
    on<OwnerDashboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OwnerDashboardInitialEvent event,
    Emitter<OwnerDashboardState> emit,
  ) async {}
}
