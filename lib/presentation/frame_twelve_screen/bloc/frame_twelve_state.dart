// ignore_for_file: must_be_immutable

part of 'frame_twelve_bloc.dart';

/// Represents the state of FrameTwelve in the application.
class FrameTwelveState extends Equatable {
  FrameTwelveState({this.frameTwelveModelObj});

  FrameTwelveModel? frameTwelveModelObj;

  @override
  List<Object?> get props => [
        frameTwelveModelObj,
      ];
  FrameTwelveState copyWith({FrameTwelveModel? frameTwelveModelObj}) {
    return FrameTwelveState(
      frameTwelveModelObj: frameTwelveModelObj ?? this.frameTwelveModelObj,
    );
  }
}
