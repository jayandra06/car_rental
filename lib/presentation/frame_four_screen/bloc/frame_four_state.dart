// ignore_for_file: must_be_immutable

part of 'frame_four_bloc.dart';

/// Represents the state of FrameFour in the application.
class FrameFourState extends Equatable {
  FrameFourState({
    this.vehicleInfoEmailController,
    this.vehicleInfoPasswordController,
    this.vehicleInfoPasswordController1,
    this.frameFourModelObj,
  });

  TextEditingController? vehicleInfoEmailController;

  TextEditingController? vehicleInfoPasswordController;

  TextEditingController? vehicleInfoPasswordController1;

  FrameFourModel? frameFourModelObj;

  @override
  List<Object?> get props => [
        vehicleInfoEmailController,
        vehicleInfoPasswordController,
        vehicleInfoPasswordController1,
        frameFourModelObj,
      ];
  FrameFourState copyWith({
    TextEditingController? vehicleInfoEmailController,
    TextEditingController? vehicleInfoPasswordController,
    TextEditingController? vehicleInfoPasswordController1,
    FrameFourModel? frameFourModelObj,
  }) {
    return FrameFourState(
      vehicleInfoEmailController:
          vehicleInfoEmailController ?? this.vehicleInfoEmailController,
      vehicleInfoPasswordController:
          vehicleInfoPasswordController ?? this.vehicleInfoPasswordController,
      vehicleInfoPasswordController1:
          vehicleInfoPasswordController1 ?? this.vehicleInfoPasswordController1,
      frameFourModelObj: frameFourModelObj ?? this.frameFourModelObj,
    );
  }
}
