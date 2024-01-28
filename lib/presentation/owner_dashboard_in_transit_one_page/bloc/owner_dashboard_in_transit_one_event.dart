// ignore_for_file: must_be_immutable

part of 'owner_dashboard_in_transit_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OwnerDashboardInTransitOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OwnerDashboardInTransitOneEvent extends Equatable {}

/// Event that is dispatched when the OwnerDashboardInTransitOne widget is first created.
class OwnerDashboardInTransitOneInitialEvent
    extends OwnerDashboardInTransitOneEvent {
  @override
  List<Object?> get props => [];
}
