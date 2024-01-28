// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [car_owner_app_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CarOwnerAppModel extends Equatable {
  CarOwnerAppModel() {}

  CarOwnerAppModel copyWith() {
    return CarOwnerAppModel();
  }

  @override
  List<Object?> get props => [];
}
