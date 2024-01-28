// ignore_for_file: must_be_immutable

part of 'frame_seven_bloc.dart';

/// Represents the state of FrameSeven in the application.
class FrameSevenState extends Equatable {
  FrameSevenState({
    this.iAgreeOne = false,
    this.iAgreeOne1 = false,
    this.checkbox = false,
    this.frameSevenModelObj,
  });

  FrameSevenModel? frameSevenModelObj;

  bool iAgreeOne;

  bool iAgreeOne1;

  bool checkbox;

  @override
  List<Object?> get props => [
        iAgreeOne,
        iAgreeOne1,
        checkbox,
        frameSevenModelObj,
      ];
  FrameSevenState copyWith({
    bool? iAgreeOne,
    bool? iAgreeOne1,
    bool? checkbox,
    FrameSevenModel? frameSevenModelObj,
  }) {
    return FrameSevenState(
      iAgreeOne: iAgreeOne ?? this.iAgreeOne,
      iAgreeOne1: iAgreeOne1 ?? this.iAgreeOne1,
      checkbox: checkbox ?? this.checkbox,
      frameSevenModelObj: frameSevenModelObj ?? this.frameSevenModelObj,
    );
  }
}
