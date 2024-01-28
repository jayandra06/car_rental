// ignore_for_file: must_be_immutable

part of 'owner_dashboard_bloc.dart';

/// Represents the state of OwnerDashboard in the application.
class OwnerDashboardState extends Equatable {
  OwnerDashboardState({this.ownerDashboardModelObj});

  OwnerDashboardModel? ownerDashboardModelObj;

  @override
  List<Object?> get props => [
        ownerDashboardModelObj,
      ];
  OwnerDashboardState copyWith({OwnerDashboardModel? ownerDashboardModelObj}) {
    return OwnerDashboardState(
      ownerDashboardModelObj:
          ownerDashboardModelObj ?? this.ownerDashboardModelObj,
    );
  }
}
