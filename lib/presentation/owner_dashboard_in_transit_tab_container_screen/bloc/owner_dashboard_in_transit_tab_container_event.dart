// ignore_for_file: must_be_immutable

part of 'owner_dashboard_in_transit_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OwnerDashboardInTransitTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OwnerDashboardInTransitTabContainerEvent extends Equatable {}

/// Event that is dispatched when the OwnerDashboardInTransitTabContainer widget is first created.
class OwnerDashboardInTransitTabContainerInitialEvent
    extends OwnerDashboardInTransitTabContainerEvent {
  @override
  List<Object?> get props => [];
}
