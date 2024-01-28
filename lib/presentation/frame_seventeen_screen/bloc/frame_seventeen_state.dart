// ignore_for_file: must_be_immutable

part of 'frame_seventeen_bloc.dart';

/// Represents the state of FrameSeventeen in the application.
class FrameSeventeenState extends Equatable {
  FrameSeventeenState({
    this.dateController,
    this.frameSeventeenModelObj,
  });

  TextEditingController? dateController;

  FrameSeventeenModel? frameSeventeenModelObj;

  @override
  List<Object?> get props => [
        dateController,
        frameSeventeenModelObj,
      ];
  FrameSeventeenState copyWith({
    TextEditingController? dateController,
    FrameSeventeenModel? frameSeventeenModelObj,
  }) {
    return FrameSeventeenState(
      dateController: dateController ?? this.dateController,
      frameSeventeenModelObj:
          frameSeventeenModelObj ?? this.frameSeventeenModelObj,
    );
  }
}
