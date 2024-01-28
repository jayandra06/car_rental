// ignore_for_file: must_be_immutable

part of 'frame_eleven_bloc.dart';

/// Represents the state of FrameEleven in the application.
class FrameElevenState extends Equatable {
  FrameElevenState({
    this.front = false,
    this.back = false,
    this.rightSide = false,
    this.frameElevenModelObj,
  });

  FrameElevenModel? frameElevenModelObj;

  bool front;

  bool back;

  bool rightSide;

  @override
  List<Object?> get props => [
        front,
        back,
        rightSide,
        frameElevenModelObj,
      ];
  FrameElevenState copyWith({
    bool? front,
    bool? back,
    bool? rightSide,
    FrameElevenModel? frameElevenModelObj,
  }) {
    return FrameElevenState(
      front: front ?? this.front,
      back: back ?? this.back,
      rightSide: rightSide ?? this.rightSide,
      frameElevenModelObj: frameElevenModelObj ?? this.frameElevenModelObj,
    );
  }
}
