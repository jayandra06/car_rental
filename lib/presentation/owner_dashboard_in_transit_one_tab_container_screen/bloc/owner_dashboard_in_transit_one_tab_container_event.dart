// ignore_for_file: must_be_immutable

part of 'owner_dashboard_in_transit_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OwnerDashboardInTransitOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OwnerDashboardInTransitOneTabContainerEvent extends Equatable {}

/// Event that is dispatched when the OwnerDashboardInTransitOneTabContainer widget is first created.
class OwnerDashboardInTransitOneTabContainerInitialEvent
    extends OwnerDashboardInTransitOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
