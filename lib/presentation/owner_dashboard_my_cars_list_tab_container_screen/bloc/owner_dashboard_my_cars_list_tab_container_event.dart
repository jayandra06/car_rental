// ignore_for_file: must_be_immutable

part of 'owner_dashboard_my_cars_list_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OwnerDashboardMyCarsListTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OwnerDashboardMyCarsListTabContainerEvent extends Equatable {}

/// Event that is dispatched when the OwnerDashboardMyCarsListTabContainer widget is first created.
class OwnerDashboardMyCarsListTabContainerInitialEvent
    extends OwnerDashboardMyCarsListTabContainerEvent {
  @override
  List<Object?> get props => [];
}
