// ignore_for_file: must_be_immutable

part of 'frame_eighteen_tab_container_bloc.dart';

/// Represents the state of FrameEighteenTabContainer in the application.
class FrameEighteenTabContainerState extends Equatable {
  FrameEighteenTabContainerState({this.frameEighteenTabContainerModelObj});

  FrameEighteenTabContainerModel? frameEighteenTabContainerModelObj;

  @override
  List<Object?> get props => [
        frameEighteenTabContainerModelObj,
      ];
  FrameEighteenTabContainerState copyWith(
      {FrameEighteenTabContainerModel? frameEighteenTabContainerModelObj}) {
    return FrameEighteenTabContainerState(
      frameEighteenTabContainerModelObj: frameEighteenTabContainerModelObj ??
          this.frameEighteenTabContainerModelObj,
    );
  }
}
