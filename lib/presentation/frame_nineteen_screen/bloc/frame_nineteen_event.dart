// ignore_for_file: must_be_immutable

part of 'frame_nineteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameNineteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameNineteenEvent extends Equatable {}

/// Event that is dispatched when the FrameNineteen widget is first created.
class FrameNineteenInitialEvent extends FrameNineteenEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends FrameNineteenEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
