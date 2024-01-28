// ignore_for_file: must_be_immutable

part of 'frame_nine_bloc.dart';

/// Represents the state of FrameNine in the application.
class FrameNineState extends Equatable {
  FrameNineState({
    this.vehicleModelRadioGroup = "",
    this.frameNineModelObj,
  });

  FrameNineModel? frameNineModelObj;

  String vehicleModelRadioGroup;

  @override
  List<Object?> get props => [
        vehicleModelRadioGroup,
        frameNineModelObj,
      ];
  FrameNineState copyWith({
    String? vehicleModelRadioGroup,
    FrameNineModel? frameNineModelObj,
  }) {
    return FrameNineState(
      vehicleModelRadioGroup:
          vehicleModelRadioGroup ?? this.vehicleModelRadioGroup,
      frameNineModelObj: frameNineModelObj ?? this.frameNineModelObj,
    );
  }
}
