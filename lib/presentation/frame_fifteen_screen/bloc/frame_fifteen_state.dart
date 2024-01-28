// ignore_for_file: must_be_immutable

part of 'frame_fifteen_bloc.dart';

/// Represents the state of FrameFifteen in the application.
class FrameFifteenState extends Equatable {
  FrameFifteenState({
    this.searchController,
    this.frameFifteenModelObj,
  });

  TextEditingController? searchController;

  FrameFifteenModel? frameFifteenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        frameFifteenModelObj,
      ];
  FrameFifteenState copyWith({
    TextEditingController? searchController,
    FrameFifteenModel? frameFifteenModelObj,
  }) {
    return FrameFifteenState(
      searchController: searchController ?? this.searchController,
      frameFifteenModelObj: frameFifteenModelObj ?? this.frameFifteenModelObj,
    );
  }
}
