// ignore_for_file: must_be_immutable

part of 'frame_twenty_bloc.dart';

/// Represents the state of FrameTwenty in the application.
class FrameTwentyState extends Equatable {
  FrameTwentyState({
    this.vehicleMakeRadioGroup = "",
    this.frameTwentyModelObj,
  });

  FrameTwentyModel? frameTwentyModelObj;

  String vehicleMakeRadioGroup;

  @override
  List<Object?> get props => [
        vehicleMakeRadioGroup,
        frameTwentyModelObj,
      ];
  FrameTwentyState copyWith({
    String? vehicleMakeRadioGroup,
    FrameTwentyModel? frameTwentyModelObj,
  }) {
    return FrameTwentyState(
      vehicleMakeRadioGroup:
          vehicleMakeRadioGroup ?? this.vehicleMakeRadioGroup,
      frameTwentyModelObj: frameTwentyModelObj ?? this.frameTwentyModelObj,
    );
  }
}
