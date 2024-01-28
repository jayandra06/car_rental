// ignore_for_file: must_be_immutable

part of 'owner_dashboard_in_transit_one_bloc.dart';

/// Represents the state of OwnerDashboardInTransitOne in the application.
class OwnerDashboardInTransitOneState extends Equatable {
  OwnerDashboardInTransitOneState({this.ownerDashboardInTransitOneModelObj});

  OwnerDashboardInTransitOneModel? ownerDashboardInTransitOneModelObj;

  @override
  List<Object?> get props => [
        ownerDashboardInTransitOneModelObj,
      ];
  OwnerDashboardInTransitOneState copyWith(
      {OwnerDashboardInTransitOneModel? ownerDashboardInTransitOneModelObj}) {
    return OwnerDashboardInTransitOneState(
      ownerDashboardInTransitOneModelObj: ownerDashboardInTransitOneModelObj ??
          this.ownerDashboardInTransitOneModelObj,
    );
  }
}
