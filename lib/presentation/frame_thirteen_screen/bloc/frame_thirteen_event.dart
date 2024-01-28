// ignore_for_file: must_be_immutable

part of 'frame_thirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThirteenEvent extends Equatable {}

/// Event that is dispatched when the FrameThirteen widget is first created.
class FrameThirteenInitialEvent extends FrameThirteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends FrameThirteenEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for OTP auto fill
class ChangeOTPEvent extends FrameThirteenEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends FrameThirteenEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
