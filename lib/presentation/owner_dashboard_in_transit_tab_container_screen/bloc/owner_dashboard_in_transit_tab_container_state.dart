// ignore_for_file: must_be_immutable

part of 'owner_dashboard_in_transit_tab_container_bloc.dart';

/// Represents the state of OwnerDashboardInTransitTabContainer in the application.
class OwnerDashboardInTransitTabContainerState extends Equatable {
  OwnerDashboardInTransitTabContainerState(
      {this.ownerDashboardInTransitTabContainerModelObj});

  OwnerDashboardInTransitTabContainerModel?
      ownerDashboardInTransitTabContainerModelObj;

  @override
  List<Object?> get props => [
        ownerDashboardInTransitTabContainerModelObj,
      ];
  OwnerDashboardInTransitTabContainerState copyWith(
      {OwnerDashboardInTransitTabContainerModel?
          ownerDashboardInTransitTabContainerModelObj}) {
    return OwnerDashboardInTransitTabContainerState(
      ownerDashboardInTransitTabContainerModelObj:
          ownerDashboardInTransitTabContainerModelObj ??
              this.ownerDashboardInTransitTabContainerModelObj,
    );
  }
}
