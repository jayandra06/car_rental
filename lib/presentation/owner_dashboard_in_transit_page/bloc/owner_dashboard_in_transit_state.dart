// ignore_for_file: must_be_immutable

part of 'owner_dashboard_in_transit_bloc.dart';

/// Represents the state of OwnerDashboardInTransit in the application.
class OwnerDashboardInTransitState extends Equatable {
  OwnerDashboardInTransitState({this.ownerDashboardInTransitModelObj});

  OwnerDashboardInTransitModel? ownerDashboardInTransitModelObj;

  @override
  List<Object?> get props => [
        ownerDashboardInTransitModelObj,
      ];
  OwnerDashboardInTransitState copyWith(
      {OwnerDashboardInTransitModel? ownerDashboardInTransitModelObj}) {
    return OwnerDashboardInTransitState(
      ownerDashboardInTransitModelObj: ownerDashboardInTransitModelObj ??
          this.ownerDashboardInTransitModelObj,
    );
  }
}
