// ignore_for_file: must_be_immutable

part of 'car_owner_app_bloc.dart';

/// Represents the state of CarOwnerApp in the application.
class CarOwnerAppState extends Equatable {
  CarOwnerAppState({this.carOwnerAppModelObj});

  CarOwnerAppModel? carOwnerAppModelObj;

  @override
  List<Object?> get props => [
        carOwnerAppModelObj,
      ];
  CarOwnerAppState copyWith({CarOwnerAppModel? carOwnerAppModelObj}) {
    return CarOwnerAppState(
      carOwnerAppModelObj: carOwnerAppModelObj ?? this.carOwnerAppModelObj,
    );
  }
}
