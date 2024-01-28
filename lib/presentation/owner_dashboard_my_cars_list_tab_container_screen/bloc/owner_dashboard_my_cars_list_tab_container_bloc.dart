import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/owner_dashboard_my_cars_list_tab_container_screen/models/owner_dashboard_my_cars_list_tab_container_model.dart';
part 'owner_dashboard_my_cars_list_tab_container_event.dart';
part 'owner_dashboard_my_cars_list_tab_container_state.dart';

/// A bloc that manages the state of a OwnerDashboardMyCarsListTabContainer according to the event that is dispatched to it.
class OwnerDashboardMyCarsListTabContainerBloc extends Bloc<
    OwnerDashboardMyCarsListTabContainerEvent,
    OwnerDashboardMyCarsListTabContainerState> {
  OwnerDashboardMyCarsListTabContainerBloc(
      OwnerDashboardMyCarsListTabContainerState initialState)
      : super(initialState) {
    on<OwnerDashboardMyCarsListTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OwnerDashboardMyCarsListTabContainerInitialEvent event,
    Emitter<OwnerDashboardMyCarsListTabContainerState> emit,
  ) async {}
}
