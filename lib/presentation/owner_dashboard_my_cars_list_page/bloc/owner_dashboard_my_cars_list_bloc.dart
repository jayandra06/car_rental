import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/owner_dashboard_my_cars_list_page/models/owner_dashboard_my_cars_list_model.dart';
part 'owner_dashboard_my_cars_list_event.dart';
part 'owner_dashboard_my_cars_list_state.dart';

/// A bloc that manages the state of a OwnerDashboardMyCarsList according to the event that is dispatched to it.
class OwnerDashboardMyCarsListBloc
    extends Bloc<OwnerDashboardMyCarsListEvent, OwnerDashboardMyCarsListState> {
  OwnerDashboardMyCarsListBloc(OwnerDashboardMyCarsListState initialState)
      : super(initialState) {
    on<OwnerDashboardMyCarsListInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<OwnerDashboardMyCarsListState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<OwnerDashboardMyCarsListState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  _onInitialize(
    OwnerDashboardMyCarsListInitialEvent event,
    Emitter<OwnerDashboardMyCarsListState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
    ));
  }
}
