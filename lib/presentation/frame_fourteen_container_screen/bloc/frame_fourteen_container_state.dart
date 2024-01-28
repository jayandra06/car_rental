// ignore_for_file: must_be_immutable

part of 'frame_fourteen_container_bloc.dart';

/// Represents the state of FrameFourteenContainer in the application.
class FrameFourteenContainerState extends Equatable {
  FrameFourteenContainerState({this.frameFourteenContainerModelObj});

  FrameFourteenContainerModel? frameFourteenContainerModelObj;

  @override
  List<Object?> get props => [
        frameFourteenContainerModelObj,
      ];
  FrameFourteenContainerState copyWith(
      {FrameFourteenContainerModel? frameFourteenContainerModelObj}) {
    return FrameFourteenContainerState(
      frameFourteenContainerModelObj:
          frameFourteenContainerModelObj ?? this.frameFourteenContainerModelObj,
    );
  }
}
