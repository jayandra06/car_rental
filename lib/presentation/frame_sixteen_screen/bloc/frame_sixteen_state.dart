// ignore_for_file: must_be_immutable

part of 'frame_sixteen_bloc.dart';

/// Represents the state of FrameSixteen in the application.
class FrameSixteenState extends Equatable {
  FrameSixteenState({this.frameSixteenModelObj});

  FrameSixteenModel? frameSixteenModelObj;

  @override
  List<Object?> get props => [
        frameSixteenModelObj,
      ];
  FrameSixteenState copyWith({FrameSixteenModel? frameSixteenModelObj}) {
    return FrameSixteenState(
      frameSixteenModelObj: frameSixteenModelObj ?? this.frameSixteenModelObj,
    );
  }
}
