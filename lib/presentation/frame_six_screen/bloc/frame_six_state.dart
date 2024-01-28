// ignore_for_file: must_be_immutable

part of 'frame_six_bloc.dart';

/// Represents the state of FrameSix in the application.
class FrameSixState extends Equatable {
  FrameSixState({this.frameSixModelObj});

  FrameSixModel? frameSixModelObj;

  @override
  List<Object?> get props => [
        frameSixModelObj,
      ];
  FrameSixState copyWith({FrameSixModel? frameSixModelObj}) {
    return FrameSixState(
      frameSixModelObj: frameSixModelObj ?? this.frameSixModelObj,
    );
  }
}
