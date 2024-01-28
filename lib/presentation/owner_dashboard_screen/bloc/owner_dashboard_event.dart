// ignore_for_file: must_be_immutable

part of 'owner_dashboard_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OwnerDashboard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OwnerDashboardEvent extends Equatable {}

/// Event that is dispatched when the OwnerDashboard widget is first created.
class OwnerDashboardInitialEvent extends OwnerDashboardEvent {
  @override
  List<Object?> get props => [];
}
