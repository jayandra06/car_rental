// ignore_for_file: must_be_immutable

part of 'frame_thirteen_bloc.dart';

/// Represents the state of FrameThirteen in the application.
class FrameThirteenState extends Equatable {
  FrameThirteenState({
    this.otpController,
    this.verifyYourNumber = false,
    this.aadharUploadFront = false,
    this.frameThirteenModelObj,
  });

  TextEditingController? otpController;

  FrameThirteenModel? frameThirteenModelObj;

  bool verifyYourNumber;

  bool aadharUploadFront;

  @override
  List<Object?> get props => [
        otpController,
        verifyYourNumber,
        aadharUploadFront,
        frameThirteenModelObj,
      ];
  FrameThirteenState copyWith({
    TextEditingController? otpController,
    bool? verifyYourNumber,
    bool? aadharUploadFront,
    FrameThirteenModel? frameThirteenModelObj,
  }) {
    return FrameThirteenState(
      otpController: otpController ?? this.otpController,
      verifyYourNumber: verifyYourNumber ?? this.verifyYourNumber,
      aadharUploadFront: aadharUploadFront ?? this.aadharUploadFront,
      frameThirteenModelObj:
          frameThirteenModelObj ?? this.frameThirteenModelObj,
    );
  }
}
