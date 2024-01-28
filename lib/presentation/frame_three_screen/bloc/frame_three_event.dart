// ignore_for_file: must_be_immutable

part of 'frame_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThreeEvent extends Equatable {}

/// Event that is dispatched when the FrameThree widget is first created.
class FrameThreeInitialEvent extends FrameThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends FrameThreeEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
