// ignore_for_file: must_be_immutable

part of 'frame_one_bloc.dart';

/// Represents the state of FrameOne in the application.
class FrameOneState extends Equatable {
  FrameOneState({this.frameOneModelObj});

  FrameOneModel? frameOneModelObj;

  @override
  List<Object?> get props => [
        frameOneModelObj,
      ];
  FrameOneState copyWith({FrameOneModel? frameOneModelObj}) {
    return FrameOneState(
      frameOneModelObj: frameOneModelObj ?? this.frameOneModelObj,
    );
  }
}
