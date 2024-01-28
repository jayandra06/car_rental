// ignore_for_file: must_be_immutable

part of 'owner_dashboard_my_cars_list_tab_container_bloc.dart';

/// Represents the state of OwnerDashboardMyCarsListTabContainer in the application.
class OwnerDashboardMyCarsListTabContainerState extends Equatable {
  OwnerDashboardMyCarsListTabContainerState(
      {this.ownerDashboardMyCarsListTabContainerModelObj});

  OwnerDashboardMyCarsListTabContainerModel?
      ownerDashboardMyCarsListTabContainerModelObj;

  @override
  List<Object?> get props => [
        ownerDashboardMyCarsListTabContainerModelObj,
      ];
  OwnerDashboardMyCarsListTabContainerState copyWith(
      {OwnerDashboardMyCarsListTabContainerModel?
          ownerDashboardMyCarsListTabContainerModelObj}) {
    return OwnerDashboardMyCarsListTabContainerState(
      ownerDashboardMyCarsListTabContainerModelObj:
          ownerDashboardMyCarsListTabContainerModelObj ??
              this.ownerDashboardMyCarsListTabContainerModelObj,
    );
  }
}
