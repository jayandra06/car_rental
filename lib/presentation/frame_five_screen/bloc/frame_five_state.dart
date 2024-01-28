// ignore_for_file: must_be_immutable

part of 'frame_five_bloc.dart';

/// Represents the state of FrameFive in the application.
class FrameFiveState extends Equatable {
  FrameFiveState({
    this.emailController,
    this.frameFiveModelObj,
  });

  TextEditingController? emailController;

  FrameFiveModel? frameFiveModelObj;

  @override
  List<Object?> get props => [
        emailController,
        frameFiveModelObj,
      ];
  FrameFiveState copyWith({
    TextEditingController? emailController,
    FrameFiveModel? frameFiveModelObj,
  }) {
    return FrameFiveState(
      emailController: emailController ?? this.emailController,
      frameFiveModelObj: frameFiveModelObj ?? this.frameFiveModelObj,
    );
  }
}
