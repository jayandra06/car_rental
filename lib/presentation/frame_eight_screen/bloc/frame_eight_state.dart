// ignore_for_file: must_be_immutable

part of 'frame_eight_bloc.dart';

/// Represents the state of FrameEight in the application.
class FrameEightState extends Equatable {
  FrameEightState({this.frameEightModelObj});

  FrameEightModel? frameEightModelObj;

  @override
  List<Object?> get props => [
        frameEightModelObj,
      ];
  FrameEightState copyWith({FrameEightModel? frameEightModelObj}) {
    return FrameEightState(
      frameEightModelObj: frameEightModelObj ?? this.frameEightModelObj,
    );
  }
}
