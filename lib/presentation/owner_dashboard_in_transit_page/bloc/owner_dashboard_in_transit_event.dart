// ignore_for_file: must_be_immutable

part of 'owner_dashboard_in_transit_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OwnerDashboardInTransit widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OwnerDashboardInTransitEvent extends Equatable {}

/// Event that is dispatched when the OwnerDashboardInTransit widget is first created.
class OwnerDashboardInTransitInitialEvent extends OwnerDashboardInTransitEvent {
  @override
  List<Object?> get props => [];
}
