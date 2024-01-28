// ignore_for_file: must_be_immutable

part of 'frame_nineteen_bloc.dart';

/// Represents the state of FrameNineteen in the application.
class FrameNineteenState extends Equatable {
  FrameNineteenState({
    this.otpController,
    this.frameNineteenModelObj,
  });

  TextEditingController? otpController;

  FrameNineteenModel? frameNineteenModelObj;

  @override
  List<Object?> get props => [
        otpController,
        frameNineteenModelObj,
      ];
  FrameNineteenState copyWith({
    TextEditingController? otpController,
    FrameNineteenModel? frameNineteenModelObj,
  }) {
    return FrameNineteenState(
      otpController: otpController ?? this.otpController,
      frameNineteenModelObj:
          frameNineteenModelObj ?? this.frameNineteenModelObj,
    );
  }
}
