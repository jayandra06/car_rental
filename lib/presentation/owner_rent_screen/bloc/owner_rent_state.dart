// ignore_for_file: must_be_immutable

part of 'owner_rent_bloc.dart';

/// Represents the state of OwnerRent in the application.
class OwnerRentState extends Equatable {
  OwnerRentState({this.ownerRentModelObj});

  OwnerRentModel? ownerRentModelObj;

  @override
  List<Object?> get props => [
        ownerRentModelObj,
      ];
  OwnerRentState copyWith({OwnerRentModel? ownerRentModelObj}) {
    return OwnerRentState(
      ownerRentModelObj: ownerRentModelObj ?? this.ownerRentModelObj,
    );
  }
}
