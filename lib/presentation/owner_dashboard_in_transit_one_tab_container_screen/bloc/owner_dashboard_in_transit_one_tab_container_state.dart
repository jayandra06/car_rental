// ignore_for_file: must_be_immutable

part of 'owner_dashboard_in_transit_one_tab_container_bloc.dart';

/// Represents the state of OwnerDashboardInTransitOneTabContainer in the application.
class OwnerDashboardInTransitOneTabContainerState extends Equatable {
  OwnerDashboardInTransitOneTabContainerState(
      {this.ownerDashboardInTransitOneTabContainerModelObj});

  OwnerDashboardInTransitOneTabContainerModel?
      ownerDashboardInTransitOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        ownerDashboardInTransitOneTabContainerModelObj,
      ];
  OwnerDashboardInTransitOneTabContainerState copyWith(
      {OwnerDashboardInTransitOneTabContainerModel?
          ownerDashboardInTransitOneTabContainerModelObj}) {
    return OwnerDashboardInTransitOneTabContainerState(
      ownerDashboardInTransitOneTabContainerModelObj:
          ownerDashboardInTransitOneTabContainerModelObj ??
              this.ownerDashboardInTransitOneTabContainerModelObj,
    );
  }
}
