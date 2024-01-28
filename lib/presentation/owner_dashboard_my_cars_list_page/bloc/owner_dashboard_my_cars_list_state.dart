// ignore_for_file: must_be_immutable

part of 'owner_dashboard_my_cars_list_bloc.dart';

/// Represents the state of OwnerDashboardMyCarsList in the application.
class OwnerDashboardMyCarsListState extends Equatable {
  OwnerDashboardMyCarsListState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.ownerDashboardMyCarsListModelObj,
  });

  OwnerDashboardMyCarsListModel? ownerDashboardMyCarsListModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        ownerDashboardMyCarsListModelObj,
      ];
  OwnerDashboardMyCarsListState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    OwnerDashboardMyCarsListModel? ownerDashboardMyCarsListModelObj,
  }) {
    return OwnerDashboardMyCarsListState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      ownerDashboardMyCarsListModelObj: ownerDashboardMyCarsListModelObj ??
          this.ownerDashboardMyCarsListModelObj,
    );
  }
}
