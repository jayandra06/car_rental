// ignore_for_file: must_be_immutable

part of 'frame_two_bloc.dart';

/// Represents the state of FrameTwo in the application.
class FrameTwoState extends Equatable {
  FrameTwoState({
    this.checkmark = false,
    this.rc = false,
    this.cBook = false,
    this.frameTwoModelObj,
  });

  FrameTwoModel? frameTwoModelObj;

  bool checkmark;

  bool rc;

  bool cBook;

  @override
  List<Object?> get props => [
        checkmark,
        rc,
        cBook,
        frameTwoModelObj,
      ];
  FrameTwoState copyWith({
    bool? checkmark,
    bool? rc,
    bool? cBook,
    FrameTwoModel? frameTwoModelObj,
  }) {
    return FrameTwoState(
      checkmark: checkmark ?? this.checkmark,
      rc: rc ?? this.rc,
      cBook: cBook ?? this.cBook,
      frameTwoModelObj: frameTwoModelObj ?? this.frameTwoModelObj,
    );
  }
}
