// ignore_for_file: must_be_immutable

part of 'frame_tab_container_bloc.dart';

/// Represents the state of FrameTabContainer in the application.
class FrameTabContainerState extends Equatable {
  FrameTabContainerState({
    this.searchController,
    this.frameTabContainerModelObj,
  });

  TextEditingController? searchController;

  FrameTabContainerModel? frameTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        frameTabContainerModelObj,
      ];
  FrameTabContainerState copyWith({
    TextEditingController? searchController,
    FrameTabContainerModel? frameTabContainerModelObj,
  }) {
    return FrameTabContainerState(
      searchController: searchController ?? this.searchController,
      frameTabContainerModelObj:
          frameTabContainerModelObj ?? this.frameTabContainerModelObj,
    );
  }
}
