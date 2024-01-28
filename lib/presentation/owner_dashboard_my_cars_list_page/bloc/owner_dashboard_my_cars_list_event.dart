// ignore_for_file: must_be_immutable

part of 'owner_dashboard_my_cars_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OwnerDashboardMyCarsList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OwnerDashboardMyCarsListEvent extends Equatable {}

/// Event that is dispatched when the OwnerDashboardMyCarsList widget is first created.
class OwnerDashboardMyCarsListInitialEvent
    extends OwnerDashboardMyCarsListEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends OwnerDashboardMyCarsListEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends OwnerDashboardMyCarsListEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
