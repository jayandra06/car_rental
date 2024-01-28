// ignore_for_file: must_be_immutable

part of 'frame_fourteen_bloc.dart';

/// Represents the state of FrameFourteen in the application.
class FrameFourteenState extends Equatable {
  FrameFourteenState({this.frameFourteenModelObj});

  FrameFourteenModel? frameFourteenModelObj;

  @override
  List<Object?> get props => [
        frameFourteenModelObj,
      ];
  FrameFourteenState copyWith({FrameFourteenModel? frameFourteenModelObj}) {
    return FrameFourteenState(
      frameFourteenModelObj:
          frameFourteenModelObj ?? this.frameFourteenModelObj,
    );
  }
}
